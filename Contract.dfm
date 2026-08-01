inherited ContractF: TContractF
  Left = 312
  Top = 103
  Caption = #1602#1585#1575#1585#1583#1575#1583' '#1601#1585#1608#1588' '#1608' '#1582#1583#1605#1575#1578
  ClientWidth = 781
  OnResize = FormResize
  ExplicitWidth = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 781
    TabOrder = 2
    ExplicitWidth = 781
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 76
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 1
    end
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
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
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 544
      Top = 1
      Width = 236
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        236
        39)
      object BitBtn3: TBitBtn
        Left = 160
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsertRecipts
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 83
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEditRecipts
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 6
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDeleteRecipts
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 379
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 89
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetPostRecipts
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
        Left = 5
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetCancelRecipts
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
      Left = 387
      Top = 1
      Width = 80
      Height = 39
      DataSource = srcRecipts
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 6
    end
    object BitBtn10: TBitBtn
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
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 781
    Height = 55
    TabOrder = 0
    ExplicitWidth = 781
    ExplicitHeight = 55
    inherited ImgTemplate: TImage
      Left = 751
      ExplicitLeft = 751
    end
    inherited lblCaption: TLabel
      Left = 673
      Height = 35
      ExplicitLeft = 673
    end
    object LblReciptDate: TLabel
      Left = 117
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
    object SBtnReciptNumber: TSpeedButton
      Left = 14
      Top = 2
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SBtnReciptNumberClick
    end
    object EdtReciptDate: TDBEdit
      Left = 40
      Top = 28
      Width = 70
      Height = 21
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      MaxLength = 10
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
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 781
    Height = 421
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 781
    ExplicitHeight = 421
    object PageControl1: TPageControl
      Left = 2
      Top = 174
      Width = 777
      Height = 245
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #1603#1575#1604#1575#1610' '#1605#1608#1585#1583' '#1602#1585#1575#1585#1583#1575#1583
        object GrdReciptsItems: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 769
          Height = 188
          Align = alClient
          Color = clCream
          DataSource = srcReciptsItems
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = GrdReciptsItemsEditButtonClick
          OnKeyPress = GrdReciptsItemsKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'StuffCode'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_StuffName'
              ReadOnly = True
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_UnitName'
              ReadOnly = True
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InputEntity'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InputWeight'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitSellPrice'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalInputPrice'
              ReadOnly = True
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitSellPrice2'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DeficitValue'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DeficitValue2'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DeficitValue3'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalDeficient'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotallSellPrice'
              ReadOnly = True
              Width = 83
              Visible = True
            end>
        end
        object PnlReciptsItems: TPanel
          Left = 0
          Top = 188
          Width = 769
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object newPanelReciptsItems: TPanel
            Left = 529
            Top = 0
            Width = 240
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object BitBtn2: TBitBtn
              Left = 160
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetInsertReciptsItems
              Caption = #1580#1583#1610#1583
              TabOrder = 0
            end
            object BitBtn14: TBitBtn
              Left = 83
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetEditReciptsItems
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 1
            end
            object BitBtn6: TBitBtn
              Left = 5
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetDeleteReciptsItems
              Caption = #1581#1584#1601
              TabOrder = 2
            end
          end
          object okPanelReciptsItems: TPanel
            Left = 360
            Top = 0
            Width = 169
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              169
              29)
            object BitBtn11: TBitBtn
              Left = 10
              Top = 4
              Width = 75
              Height = 25
              Action = DataSetCancelReciptsItems
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1589#1585#1575#1601
              TabOrder = 1
            end
            object BitBtn13: TBitBtn
              Left = 87
              Top = 4
              Width = 75
              Height = 25
              Action = DataSetPostReciptsItems
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1610#1610#1583
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Tag = 1
        Caption = #1608#1580#1607' '#1606#1602#1583
        ImageIndex = 1
        inline frmGrdvjhnghd1: TfrmVajheNaghd
          Left = 0
          Top = 36
          Width = 769
          Height = 181
          Align = alClient
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          TabOrder = 0
          ExplicitTop = 36
          ExplicitWidth = 769
          ExplicitHeight = 181
          inherited GrdVajheNaghd: TDBGrid
            Width = 769
            Height = 152
          end
          inherited PnlVajheNaghd: TPanel
            Top = 152
            Width = 769
            ExplicitTop = 152
            ExplicitWidth = 769
            inherited newPanelVajheNaghd: TPanel
              Left = 529
              ExplicitLeft = 529
            end
            inherited okPanelVajheNaghd: TPanel
              Left = 360
              ExplicitLeft = 360
            end
            inherited BitBtn12: TBitBtn
              OnClick = frmGrdvjhnghd1BitBtn12Click
            end
            inherited BitBtn9: TBitBtn
              OnClick = frmGrdvjhnghd1BitBtn9Click
            end
          end
          inherited qryCustomer: TADOQuery
            Active = True
            Top = 112
          end
          inherited qryFormsFr: TADOQuery
            Active = True
            Left = 344
            Top = 104
          end
          inherited qryInitForm: TADOQuery
            Left = 552
          end
          inherited ActionList1: TActionList
            Left = 208
            Top = 40
          end
        end
        inline frmrdVajhenaghd: TfrmRadioDisplayFormType
          Left = 0
          Top = 0
          Width = 769
          Height = 36
          Align = alTop
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          TabOrder = 1
          ExplicitWidth = 769
          inherited rgpFormType: TRadioGroup
            Width = 769
            OnClick = frmrdVajhenaghdrgpFormTypeClick
            ExplicitWidth = 769
            ExplicitHeight = 36
          end
        end
      end
      object TabSheet4: TTabSheet
        Tag = 10
        Caption = #1670#1603
        ImageIndex = 3
        object GrdCheck: TDBGrid
          Tag = 111
          Left = 0
          Top = 89
          Width = 617
          Height = 99
          Align = alClient
          Color = clCream
          DataSource = srcFormItemsCheck
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = GrdCheckEditButtonClick
          OnKeyPress = GrdCheckKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CheckNumber'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckDate'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BankName'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumber'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumberNew'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'City'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 87
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 36
          Width = 769
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          BevelWidth = 2
          Caption = ' '
          TabOrder = 0
          DesignSize = (
            769
            53)
          object Label8: TLabel
            Left = 703
            Top = 6
            Width = 50
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
            ExplicitLeft = 723
          end
          object SBtnFormNumber: TSpeedButton
            Left = 595
            Top = 1
            Width = 23
            Height = 22
            Hint = '26'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnFormNumberClick
            ExplicitLeft = 615
          end
          object Label4: TLabel
            Left = 702
            Top = 30
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
            ExplicitLeft = 722
          end
          object LblCustomerID1: TLabel
            Left = 471
            Top = 6
            Width = 92
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeftNoAlign
            Caption = #1603#1583' '#1608#1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
            FocusControl = EdtCustomerID1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ExplicitLeft = 491
          end
          object SBtnCustomerID1: TSpeedButton
            Left = 300
            Top = 1
            Width = 23
            Height = 22
            Hint = '26'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBtnCustomerID1Click
            ExplicitLeft = 320
          end
          object TxtCustomerID1: TDBText
            Left = 300
            Top = 28
            Width = 265
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_CustomerName'
            DataSource = srcFormsCheck
            ParentColor = False
            Transparent = False
            ExplicitLeft = 320
          end
          object EdtFNum: TDBEdit
            Left = 619
            Top = 2
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            AutoSize = False
            DataField = 'FormNumber'
            DataSource = srcFormsCheck
            TabOrder = 0
          end
          object EdtFormDate: TDBEdit
            Left = 619
            Top = 26
            Width = 80
            Height = 21
            Anchors = [akTop, akRight]
            AutoSize = False
            DataField = 'FormDate'
            DataSource = srcFormsCheck
            TabOrder = 1
          end
          object EdtCustomerID1: TDBEdit
            Left = 329
            Top = 2
            Width = 140
            Height = 21
            Hint = '26'
            Anchors = [akTop, akRight]
            AutoSize = False
            DataField = 'CustomerID1'
            DataSource = srcFormsCheck
            TabOrder = 2
            OnKeyDown = EdtCustomerID1KeyDown
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 277
            Height = 53
            Align = alLeft
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
            TabOrder = 3
            object DBMemo1: TDBMemo
              Left = 16
              Top = 16
              Width = 259
              Height = 21
              Align = alCustom
              Anchors = [akLeft, akTop, akRight]
              DataField = 'FomNote'
              DataSource = srcFormsCheck
              TabOrder = 0
            end
          end
        end
        object PnlFormItemsCheck: TPanel
          Left = 0
          Top = 188
          Width = 769
          Height = 29
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            769
            29)
          object SpeedButton1: TSpeedButton
            Left = 181
            Top = 4
            Width = 23
            Height = 22
            Action = actCopyPaste
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840021842900218429006BAD
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD
              8400218429002184290021842900218429002184290094DE8C0039B552002184
              2900218429002184290021842900218429006BAD8400FF00FF00FF00FF0063A5
              630039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
              520039B5520039B5520039B5520039B5520021842900FF00FF00FF00FF0063A5
              630094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE
              8C0094DE8C0094DE8C0094DE8C0094DE8C0021842900FF00FF00FF00FF006BAD
              840063A5630063A5630063A5630063A5630063A5630094DE8C0039B552002184
              2900218429002184290021842900218429006BAD8400FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840063A5630063A563006BAD
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
          end
          object newPanelFormsCheck: TPanel
            Left = 529
            Top = 0
            Width = 240
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object BitBtn20: TBitBtn
              Left = 160
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetInsertFormsCheck
              Caption = #1580#1583#1610#1583
              TabOrder = 0
            end
            object BitBtn21: TBitBtn
              Left = 83
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetEditFormsCheck
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 1
            end
            object BitBtn22: TBitBtn
              Left = 5
              Top = 3
              Width = 75
              Height = 25
              Action = DataSetDeleteFormsCheck
              Caption = #1581#1584#1601
              TabOrder = 2
            end
          end
          object okPanelFormsCheck: TPanel
            Left = 360
            Top = 0
            Width = 169
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              169
              29)
            object BitBtn23: TBitBtn
              Left = 10
              Top = 4
              Width = 75
              Height = 25
              Action = DataSetCancelFormsCheck
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1589#1585#1575#1601
              TabOrder = 1
            end
            object BitBtn24: TBitBtn
              Left = 87
              Top = 4
              Width = 75
              Height = 25
              Action = DataSetPostFormsCheck
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1610#1610#1583
              TabOrder = 0
            end
          end
          object BtnAccCheck: TBitBtn
            Left = 6
            Top = 3
            Width = 92
            Height = 25
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            TabOrder = 2
            OnClick = BtnAccCheckClick
          end
          object BitBtn26: TBitBtn
            Left = 102
            Top = 3
            Width = 75
            Height = 25
            Action = DataSetDeleteFormItemsCheck
            Caption = #1581#1584#1601' '#1670#1603
            TabOrder = 3
          end
          object DBNavigator2: TDBNavigator
            Left = 218
            Top = 4
            Width = 152
            Height = 25
            DataSource = srcFormsCheck
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Anchors = [akLeft, akTop, akRight]
            Flat = True
            TabOrder = 4
          end
        end
        object DBGrid1: TDBGrid
          Left = 617
          Top = 89
          Width = 152
          Height = 99
          TabStop = False
          Align = alRight
          Color = clCream
          DataSource = srcFormsCheck
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FormNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormDate'
              Width = 68
              Visible = True
            end>
        end
        inline frmrdCheck: TfrmRadioDisplayFormType
          Left = 0
          Top = 0
          Width = 769
          Height = 36
          Align = alTop
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          TabOrder = 4
          ExplicitWidth = 769
          inherited rgpFormType: TRadioGroup
            Width = 769
            OnClick = frmrdCheckrgpFormTypeClick
            ExplicitWidth = 769
            ExplicitHeight = 36
          end
        end
      end
    end
    object pnlCustomer1: TPanel
      Left = 2
      Top = 2
      Width = 777
      Height = 124
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        777
        124)
      object SBtnPersonID1: TSpeedButton
        Left = 596
        Top = 1
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SBtnPersonID1Click
        ExplicitLeft = 612
      end
      object LblPerson1: TLabel
        Left = 694
        Top = 6
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1591#1585#1601' '#1602#1585#1575#1583#1575#1583
        FocusControl = EdtPersonID1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 710
      end
      object DBTextPersonID1: TDBText
        Left = 456
        Top = 24
        Width = 309
        Height = 16
        Anchors = [akTop, akRight]
        Color = clCream
        DataField = '_PersonName1'
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
        ExplicitLeft = 472
      end
      object LblStore: TLabel
        Left = 117
        Top = 7
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575
        FocusControl = EdtStoreID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SBtnStoreID: TSpeedButton
        Left = 14
        Top = 2
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SBtnStoreIDClick
      end
      object DBTextStoreID: TDBText
        Left = 14
        Top = 27
        Width = 309
        Height = 16
        Color = clCream
        DataField = '_StoresName'
        DataSource = srcRecipts
        ParentColor = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 694
        Top = 106
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1603#1604' '#1602#1585#1575#1585#1583#1575#1583
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 710
      end
      object Label5: TLabel
        Left = 117
        Top = 105
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = #1581#1583#1575#1603#1579#1585' '#1608#1586#1606
        FocusControl = EdtStoreID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdtPersonID1: TDBEdit
        Left = 621
        Top = 2
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'PersonID1'
        DataSource = srcRecipts
        TabOrder = 0
      end
      object EdtStoreID: TDBEdit
        Left = 40
        Top = 3
        Width = 70
        Height = 21
        DataField = 'StoreID'
        DataSource = srcRecipts
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 374
        Top = 45
        Width = 393
        Height = 51
        Anchors = [akTop, akRight]
        Caption = ' '#1605#1583#1578' '#1602#1585#1575#1585#1583#1575#1583' '
        TabOrder = 2
        object Label2: TLabel
          AlignWithMargins = True
          Left = 245
          Top = 21
          Width = 30
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alRight
          Caption = #1578#1575' '#1578#1575#1585#1610#1582
          ExplicitHeight = 13
        end
        object Label1: TLabel
          AlignWithMargins = True
          Left = 357
          Top = 21
          Width = 31
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alRight
          Caption = #1575#1586' '#1578#1575#1585#1610#1582
          ExplicitHeight = 13
        end
        object txtReciptStartDateToEnd: TDBText
          AlignWithMargins = True
          Left = 160
          Top = 21
          Width = 3
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alRight
          AutoSize = True
          Color = clCream
          DataField = 'ReciptStartDateToEnd'
          DataSource = srcRecipts
          ParentColor = False
          Transparent = False
          ExplicitLeft = 42
          ExplicitHeight = 13
        end
        object edtReciptEndDate: TDBEdit
          AlignWithMargins = True
          Left = 169
          Top = 21
          Width = 70
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alRight
          DataField = 'ReciptEndDate'
          DataSource = srcRecipts
          MaxLength = 10
          TabOrder = 1
          ExplicitHeight = 21
        end
        object edtReciptStartDate: TDBEdit
          AlignWithMargins = True
          Left = 281
          Top = 21
          Width = 70
          Height = 22
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alRight
          DataField = 'ReciptStartDate'
          DataSource = srcRecipts
          MaxLength = 10
          TabOrder = 0
          ExplicitHeight = 21
        end
      end
      object DBCheckBox1: TDBCheckBox
        Left = 14
        Top = 45
        Width = 168
        Height = 17
        Caption = #1603#1606#1578#1585#1604' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1583#1585' '#1582#1585#1608#1580' '#1603#1575#1604#1575
        DataField = 'DebtControlActive'
        DataSource = srcRecipts
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit3: TDBEdit
        Left = 552
        Top = 102
        Width = 139
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'ReciptValue'
        DataSource = srcRecipts
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 14
        Top = 101
        Width = 96
        Height = 21
        DataField = 'AidNumber'
        DataSource = srcRecipts
        TabOrder = 5
      end
    end
    object GrpReciptNote: TGroupBox
      Left = 2
      Top = 126
      Width = 777
      Height = 48
      Align = alTop
      Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      TabOrder = 1
      object DBMemo2: TDBMemo
        Left = 16
        Top = 16
        Width = 689
        Height = 21
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ReciptNote'
        DataSource = srcRecipts
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    Left = 608
    object DataSetInsert_par: TDataSetInsert [0]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
    end
    object DataSetEdit_par: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
    end
    object DataSetPost_par: TDataSetPost [2]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
    end
    object DataSetCancel_par: TDataSetCancel [3]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
    end
    object DataSetDelete_par: TDataSetDelete [4]
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetInsertFish: TDataSetInsert [5]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
    end
    object DataSetEditFish: TDataSetEdit [6]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
    end
    object DataSetPostFish: TDataSetPost [7]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
    end
    object DataSetCancelFish: TDataSetCancel [8]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
    end
    object DataSetDeleteFish: TDataSetDelete [9]
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetInsertFormsCheck: TDataSetInsert [10]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      DataSource = srcFormsCheck
    end
    object DataSetEditFormsCheck: TDataSetEdit [11]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      DataSource = srcFormsCheck
    end
    object DataSetPostFormsCheck: TDataSetPost [12]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      DataSource = srcFormsCheck
    end
    object DataSetCancelFormsCheck: TDataSetCancel [13]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcFormsCheck
    end
    object DataSetDeleteFormItemsCheck: TDataSetDelete [14]
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1670#1603
      DataSource = srcFormItemsCheck
    end
    object DataSetDeleteFormsCheck: TDataSetDelete [15]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcFormsCheck
    end
    inherited DataSetInsert1: TDataSetInsert
      ShortCut = 0
    end
    inherited DataSetEdit1: TDataSetEdit
      ShortCut = 0
    end
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
    end
    inherited DataSetCancel1: TDataSetCancel
      ShortCut = 0
    end
    object DataSetDeleteReciptsItems: TDataSetDelete [21]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcReciptsItems
    end
    object DataSetCancelReciptsItems: TDataSetCancel [22]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcReciptsItems
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object DataSetEditReciptsItems: TDataSetEdit [25]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      DataSource = srcReciptsItems
    end
    object DataSetCancelRecipts: TDataSetCancel [26]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcRecipts
    end
    object DataSetDeleteRecipts: TDataSetDelete [27]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcRecipts
    end
    object DataSetEditRecipts: TDataSetEdit [28]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcRecipts
    end
    object DataSetPostReciptsItems: TDataSetPost [29]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcReciptsItems
    end
    object DataSetDeleteFormItems: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = srcFormItemsCheck
    end
    object DataSetInsertReciptsItems: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      DataSource = srcReciptsItems
    end
    object DataSetInsertFormItems: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcFormItemsCheck
    end
    object DataSetPostRecipts: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcRecipts
    end
    object DataSetCancelFormItems: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancelFormItems'
      ShortCut = 27
      DataSource = srcFormItemsCheck
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = 'actSort'
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actEdit: TAction
      Caption = #1608#1610#1585#1575#1610#1588
    end
    object actDelete1: TAction
      OnExecute = actDelete1Execute
    end
    object actselectCheck: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1603#1607#1575
    end
    object DataSetInsertRecipts: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcRecipts
    end
    object actCopyPaste: TAction
      ImageIndex = 4
      ShortCut = 8237
      OnExecute = actCopyPasteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 704
    Top = 225
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         FormTypes'
      'where FormType=:Type')
    Left = 544
    Top = 7
  end
  object srcFormItemsCheck: TDataSource
    DataSet = qryFormItemsCheck
    OnStateChange = srcFormItemsCheckStateChange
    Left = 416
    Top = 375
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1Recipts
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ContractF.rtm'
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
    Left = 608
    Top = 303
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1Recipts'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 90000
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3Forms'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3Forms
          PrinterSetup.BinName = 'Default'
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
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3Forms'
          object ppDetailBand3: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline3Forms
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3Forms'
              mmHeight = 6519
              mmLeft = 105569
              mmTop = 0
              mmWidth = 29369
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label5'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1601#1610#1588' '#1606#1602#1583#1610
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 135467
              mmTop = 0
              mmWidth = 41000
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'ReciptValue'
              DataPipeline = ppDBPipeline1Recipts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline1Recipts'
              mmHeight = 5821
              mmLeft = 50006
              mmTop = 1058
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
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline4FormsCheck'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 4233
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline4FormsCheck
          PrinterSetup.BinName = 'Default'
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
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline4FormsCheck'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 1000
            object ppSubReport3: TppSubReport
              DesignLayer = ppDesignLayer3
              UserName = 'SubReport3'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppDBPipeline2FormItemsCheck'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 4
              LayerName = Foreground2
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport3: TppChildReport
                AutoStop = False
                DataPipeline = ppDBPipeline2FormItemsCheck
                PrinterSetup.BinName = 'Default'
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
                Units = utMillimeters
                Version = '23.0'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                object ppDetailBand4: TppDetailBand
                  Border.mmPadding = 0
                  mmBottomOffset = 0
                  mmHeight = 7144
                  mmPrintPosition = 0
                  object ppDBText10: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText10'
                    Border.mmPadding = 0
                    DataField = 'AccountNumber'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6519
                    mmLeft = 21696
                    mmTop = 0
                    mmWidth = 20108
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppDBText11: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText101'
                    Border.mmPadding = 0
                    DataField = 'ItemAmount'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    DisplayFormat = '#,0'
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6519
                    mmLeft = 105834
                    mmTop = 0
                    mmWidth = 29369
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppDBText12: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText102'
                    Border.mmPadding = 0
                    DataField = 'AccountNumberNew'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6519
                    mmLeft = 1323
                    mmTop = 0
                    mmWidth = 20108
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppDBText13: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText103'
                    Border.mmPadding = 0
                    DataField = 'BankName'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6519
                    mmLeft = 42598
                    mmTop = 0
                    mmWidth = 20108
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppDBText14: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText14'
                    Border.mmPadding = 0
                    DataField = 'CheckDate'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6519
                    mmLeft = 64029
                    mmTop = 0
                    mmWidth = 20108
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppDBText15: TppDBText
                    DesignLayer = ppDesignLayer2
                    UserName = 'DBText15'
                    AutoSize = True
                    Border.mmPadding = 0
                    DataField = 'CheckNumber'
                    DataPipeline = ppDBPipeline2FormItemsCheck
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Badr'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBPipeline2FormItemsCheck'
                    mmHeight = 6350
                    mmLeft = 99484
                    mmTop = 0
                    mmWidth = 793
                    BandType = 4
                    LayerName = Foreground1
                  end
                  object ppLabel4: TppLabel
                    DesignLayer = ppDesignLayer2
                    UserName = 'Label4'
                    AutoSize = False
                    Border.mmPadding = 0
                    Caption = #1670#1603' '#1576#1575#1606#1603#1610
                    Font.Charset = ARABIC_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Zar'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                    FormFieldSettings.FormFieldType = fftNone
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 5556
                    mmLeft = 135996
                    mmTop = 0
                    mmWidth = 41000
                    BandType = 4
                    LayerName = Foreground1
                  end
                end
                object ppDesignLayers2: TppDesignLayers
                  object ppDesignLayer2: TppDesignLayer
                    UserName = 'Foreground1'
                    LayerType = ltBanded
                    Index = 0
                  end
                end
              end
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 284692
      mmPrintPosition = 0
      object ppRichText1: TppRichText
        DesignLayer = ppDesignLayer5
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Border.mmPadding = 0
        Caption = 'RichText1'
        ExportRTFAsBitmap = False
        RichText = 
          '{\rtf1\fbidis\ansi\ansicpg1256\deff0\deflang1065{\fonttbl{\f0\fs' +
          'wiss\fcharset178 Tahoma;}{\f1\fnil\fcharset178 Zar;}}'#13#10'\viewkind' +
          '4\uc1\pard\ltrpar\qr\f0\rtlch\fs24 7_\'#39'8d\'#39'e4\'#39'c7\'#39'e4\'#39'8d\'#39'e5 \'#39 +
          'e3\'#39'de\'#39'cf\'#39'c7\'#39'd1 \'#39'ca\'#39'e4\'#39'c7\'#39'8e \'#39'df\'#39'c7\'#39'e1\'#39'c7\'#39'ed \'#39'd0\'#39'c' +
          'e\'#39'ed\'#39'd1\'#39'e5 \'#39'd4\'#39'cf\'#39'e5 \'#39'c8\'#39'ed\'#39'd4 \'#39'c7\'#39'd2 \'#39'd9\'#39'd1\'#39'dd\'#39'e' +
          'd\'#39'ca \'#39'e3\'#39'e6\'#39'd1\'#39'cf \'#39'c7\'#39'cc\'#39'c7\'#39'd1\'#39'e5 \'#39'de\'#39'd1\'#39'c7\'#39'd1\'#39'cf' +
          '\'#39'c7\'#39'cf \'#39'c8\'#39'd4\'#39'e6\'#39'cf\'#39'df\'#39'd1\'#39'c7\'#39'ed\'#39'e5 \'#39'cd\'#39'de \'#39'c7\'#39'e1\' +
          #39'cd\'#39'dd\'#39'c7\'#39'd9 \'#39'c8\'#39'd1\'#39'c7\'#39'c8\'#39'd1 \'#39'e3\'#39'd5\'#39'e6\'#39'c8\'#39'e5 \'#39'e3\'#39 +
          'cc\'#39'e3\'#39'da \'#39'da\'#39'e3\'#39'e6\'#39'e3\'#39'ed3\'#39'c8\'#39'd1\'#39'c7\'#39'c8\'#39'd1 \'#39'e3\'#39'cd\'#39'c' +
          '7\'#39'd3\'#39'c8\'#39'e5 \'#39'e6\'#39'e6\'#39'd5\'#39'e6\'#39'e1 \'#39'ce\'#39'e6\'#39'c7\'#39'e5\'#39'cf \'#39'd4\'#39'cf' +
          '.\par'#13#10'\pard\rtlpar\qr 8_\'#39'ca\'#39'ce\'#39'e1\'#39'ed\'#39'e5 \'#39'df\'#39'c7\'#39'e1\'#39'c7\'#39 +
          'c7\'#39'd2 \'#39'e3\'#39'c7\'#39'd4\'#39'ed\'#39'e4 \'#39'c8\'#39'd1\'#39'd1\'#39'e6\'#39'ed \'#39'd3\'#39'df\'#39'e6 \'#39 +
          'e6\'#39'c8\'#39'c7\'#39'e1\'#39'da\'#39'df\'#39'd3 \'#39'c8\'#39'da\'#39'e5\'#39'cf\'#39'e5 \'#39'e3\'#39'd4\'#39'ca\'#39'd1' +
          '\'#39'ed \'#39'c8\'#39'c7\'#39'd4\'#39'cf\par'#13#10'9_\'#39'cd\'#39'cf\'#39'c7\'#39'de\'#39'e1 \'#39'e3\'#39'cf\'#39'ca \' +
          #39'de\'#39'd1\'#39'c7\'#39'd1\'#39'cf\'#39'c7\'#39'cf 5/3\'#39'e3\'#39'c7\'#39'e5 \'#39'e6\'#39'd6\'#39'e3\'#39'c7\'#39'e4' +
          '\'#39'ca \'#39'e4\'#39'90\'#39'e5\'#39'cf\'#39'c7\'#39'd1\'#39'ed \'#39'dd\'#39'de\'#39'd8 5/2\'#39'e3\'#39'c7\'#39'e5 \' +
          #39'c8\'#39'c7\'#39'd4\'#39'cf\par'#13#10'10_\'#39'c7\'#39'dd\'#39'ca \'#39'e6\'#39'd2\'#39'e4\'#39'ed \'#39'df\'#39'c7\'#39 +
          'e1\'#39'c7 \'#39'cf\'#39'd1 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'c8\'#39'da\'#39'e5\'#39'cf\'#39 +
          'e5 \'#39'e3\'#39'ca\'#39'de\'#39'c7\'#39'd6\'#39'ed \'#39'c8\'#39'e6\'#39'cf\'#39'e5 \'#39'e6\'#39'8d\'#39'e4\'#39'c7\'#39'e' +
          '4\'#39'8d\'#39'e5 \'#39'e3\'#39'ca\'#39'de\'#39'c7\'#39'd6\'#39'ed \'#39'ca\'#39'e3\'#39'c7\'#39'e3 \'#39'd4\'#39'd1\'#39'c7' +
          '\'#39'ed\'#39'd8 \'#39'de\'#39'd1\'#39'c7\'#39'd1\'#39'cf\'#39'c7\'#39'cf \'#39'd1\'#39'c7\'#39'd1\'#39'da\'#39'c7\'#39'ed\'#39 +
          'ca \'#39'e4\'#39'e3\'#39'c7\'#39'ed\'#39'cf \'#39'c8\'#39'd1\'#39'c7\'#39'ed \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39 +
          'e4\'#39'e5 \'#39'ca\'#39'c7 \'#39'cd\'#39'cf\'#39'c7\'#39'df\'#39'cb\'#39'd1 10%\'#39'ce\'#39'd1\'#39'c7\'#39'c8\'#39'ed' +
          ' \'#39'cf\'#39'd1 \'#39'd8\'#39'e6\'#39'e1 \'#39'e3\'#39'cf\'#39'ca \'#39'de\'#39'd1\'#39'c7\'#39'd1\'#39'cf\'#39'c7\'#39'cf' +
          ' \'#39'e4\'#39'90\'#39'e5\'#39'cf\'#39'c7\'#39'd1\'#39'ed \'#39'c7\'#39'e4\'#39'90\'#39'e6\'#39'd1 \'#39'e3\'#39'cc\'#39'c7\' +
          #39'd2 \'#39'e3\'#39'ed\'#39'c8\'#39'c7\'#39'd4\'#39'cf.\par'#13#10'11_\'#39'8d\'#39'e4\'#39'c7\'#39'e4\'#39'ca\'#39'8d\'#39 +
          'e5 \'#39'ca\'#39'e6\'#39'de\'#39'dd \'#39'df\'#39'c7\'#39'e3\'#39'e1 \'#39'cf\'#39'd1 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\' +
          #39'c7\'#39'e4\'#39'e5 \'#39'c8\'#39'ed\'#39'd4 \'#39'c7\'#39'd2 \'#39'e3\'#39'cf\'#39'ca \'#39'de\'#39'd1\'#39'c7\'#39'd1\' +
          #39'cf\'#39'c7\'#39'cf \'#39'c7\'#39'e4\'#39'ca\'#39'cc\'#39'c7\'#39'e3 \'#39'81\'#39'd0\'#39'ed\'#39'd1\'#39'cf \'#39'd3\'#39 +
          'd1\'#39'cf\'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'e5\'#39'ed\'#39'8d \'#39'90\'#39'e6\'#39'e4\'#39'e5 \'#39'e3\'#39'd3\'#39'c' +
          '6\'#39'e6\'#39'e1\'#39'ed\'#39'ca\'#39'ed \'#39'cf\'#39'd1 \'#39'c8\'#39'd1\'#39'c7\'#39'c8\'#39'd1 \'#39'dd\'#39'd3\'#39'c7' +
          '\'#39'cf \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'e4\'#39'cf\'#39'c7\'#39'd4\'#39'ca\'#39'e5 \'#39'e6\'#39'cd\'#39'de \'#39'c7' +
          '\'#39'e1\'#39'cd\'#39'dd\'#39'c7\'#39'd9 \'#39'e4\'#39'ed\'#39'd2 \'#39'ca\'#39'c7\'#39'ca\'#39'ce\'#39'e1\'#39'ed\'#39'e5 \' +
          #39'df\'#39'c7\'#39'e3\'#39'e1 \'#39'c8\'#39'c7\'#39'd1 \'#39'c8\'#39'd1 \'#39'c7\'#39'd3\'#39'c7\'#39'd3 \'#39'e4\'#39'd1\' +
          #39'ce \'#39'e3\'#39'd5\'#39'e6\'#39'c8 \'#39'cf\'#39'd1\'#39'ed\'#39'c7\'#39'dd\'#39'ca \'#39'ce\'#39'e6\'#39'c7\'#39'e5\'#39 +
          'cf \'#39'd4\'#39'cf.\par'#13#10'12_\'#39'cf\'#39'd1\'#39'd5\'#39'e6\'#39'd1\'#39'ca\'#39'ed\'#39'df\'#39'e5 \'#39'e3\'#39 +
          'ca\'#39'de\'#39'c7\'#39'd6\'#39'ed 10\'#39'd1\'#39'e6\'#39'd2 \'#39'81\'#39'd3 \'#39'c7\'#39'd2 \'#39'd4\'#39'd1\'#39'e6' +
          '\'#39'da \'#39'ca\'#39'c7\'#39'd1\'#39'ed\'#39'ce \'#39'e3\'#39'e6\'#39'd1\'#39'cf \'#39'de\'#39'd1\'#39'c7\'#39'd1\'#39'cf\' +
          #39'c7\'#39'cf (\'#39'c8\'#39'e4\'#39'cf 3)\'#39'c7\'#39'd2\'#39'ca\'#39'cd\'#39'e6\'#39'ed\'#39'e1 \'#39'df\'#39'c7\'#39'e' +
          '1\'#39'c7 \'#39'c8\'#39'e5 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'ce\'#39'e6\'#39'cf\'#39'cf\'#39'c' +
          '7\'#39'd1\'#39'ed \'#39'e4\'#39'e3\'#39'c7\'#39'ed\'#39'cf\'#39'df\'#39'e1\'#39'ed\'#39'e5 \'#39'81\'#39'ed\'#39'd4 \'#39'81' +
          '\'#39'd1\'#39'cf\'#39'c7\'#39'ce\'#39'ca \'#39'c8\'#39'e4\'#39'dd\'#39'da \'#39'd4\'#39'd1\'#39'df\'#39'ca \'#39'd6\'#39'c8\' +
          #39'd8 \'#39'e6\'#39'd3\'#39'd1\'#39'cf\'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'e3\'#39'cc\'#39'c7\'#39'd2 \'#39'ce\'#39'e6\'#39 +
          'c7\'#39'e5\'#39'cf \'#39'c8\'#39'e6\'#39'cf \'#39'd9\'#39'd1\'#39'dd\'#39'ed\'#39'ca \'#39'd1\'#39'd2\'#39'd1\'#39'e6 \'#39 +
          'd4\'#39'cf\'#39'e5 \'#39'd1\'#39'c7 \'#39'e3\'#39'e6\'#39'd1\'#39'cf \'#39'c8\'#39'e5\'#39'd1\'#39'e5 \'#39'c8\'#39'd1\'#39 +
          'cf\'#39'c7\'#39'd1\'#39'ed \'#39'de\'#39'd1\'#39'c7\'#39'd1 \'#39'cf\'#39'e5\'#39'cf.\par'#13#10'13_\'#39'd3\'#39'd1\'#39 +
          'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'c7\'#39'd2 \'#39'de\'#39'c8\'#39'e6\'#39'e1 \'#39'df\'#39'c7\'#39'e1\'#39'c7 (' +
          '\'#39'c7\'#39'e4\'#39'90\'#39'e6\'#39'd1 \'#39'e6\'#39'd3\'#39'ed\'#39'c8)\'#39'ce\'#39'd1\'#39'c7\'#39'c8 _\'#39'c2\'#39'dd' +
          '\'#39'ca \'#39'd2\'#39'cf\'#39'e5 _\'#39'c8\'#39'c7\'#39'd1\'#39'c7\'#39'e4 \'#39'ce\'#39'e6\'#39'd1\'#39'cf\'#39'e5 \'#39'c' +
          'e\'#39'e6\'#39'cf\'#39'cf\'#39'c7\'#39'd1\'#39'ed \'#39'e4\'#39'e3\'#39'c7\'#39'ed\'#39'cf.\par'#13#10'14_\'#39'8d\'#39'ed' +
          '\'#39'cf\'#39'e4 \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'cf\'#39'd1 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5' +
          ' \'#39'e6\'#39'ca\'#39'da\'#39'ed\'#39'ed\'#39'e4 \'#39'cc\'#39'c7\'#39'ed \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'e3\'#39'd1' +
          '\'#39'c8\'#39'e6\'#39'd8 \'#39'c8\'#39'e5 \'#39'e3\'#39'd3\'#39'c6\'#39'e6\'#39'e1 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7' +
          '\'#39'e4\'#39'e5 \'#39'c7\'#39'd3\'#39'ca.\par'#13#10'15_\'#39'c7\'#39'd3\'#39'ca\'#39'c7\'#39'e4\'#39'cf\'#39'c7\'#39'd1\' +
          #39'cf\'#39'cc\'#39'da\'#39'c8\'#39'e5 \'#39'e5\'#39'c7\'#39'ed \'#39'c7\'#39'e4\'#39'90\'#39'e6\'#39'd1 \'#39'da\'#39'c8\'#39 +
          'c7\'#39'd1\'#39'ca\'#39'd3\'#39'ca \'#39'c7\'#39'd2 \'#39'd8\'#39'e6\'#39'e140\'#39'd3\'#39'c7\'#39'e4\'#39'ca\'#39'ed\'#39 +
          'e3\'#39'ca\'#39'd1 \'#39'da\'#39'd1\'#39'd630\'#39'd3\'#39'c7\'#39'e4\'#39'ca\'#39'ed\'#39'e3\'#39'ca\'#39'd1 \'#39'c8\'#39 +
          'c7 \'#39'd6\'#39'ce\'#39'c7\'#39'e3\'#39'ca 2\'#39'd3\'#39'c7\'#39'e4\'#39'ca\'#39'ed\'#39'e3\'#39'ca\'#39'd1 \'#39'ca\'#39 +
          'ce\'#39'ca\'#39'e5 \'#39'81\'#39'e5\'#39'e1\'#39'e6 \'#39'e6\'#39'c7\'#39'd1\'#39'ca\'#39'dd\'#39'c7\'#39'da \'#39'c8\'#39'c' +
          '7 \'#39'81\'#39'c7\'#39'ed\'#39'e5 16\'#39'd3\'#39'c7\'#39'e4\'#39'ca\'#39'ed\'#39'e3\'#39'ca\'#39'd1(\'#39'c7\'#39'd1\'#39 +
          'ca\'#39'dd\'#39'c7\'#39'da \'#39'cc\'#39'da\'#39'c8\'#39'e5 10\'#39'd3\'#39'c7\'#39'e4\'#39'ca\'#39'ed\'#39'e3\'#39'ca\'#39 +
          'd1)\'#39'cf\'#39'd1 \'#39'd5\'#39'e6\'#39'd1\'#39'ca \'#39'c7\'#39'd3\'#39'ca\'#39'dd\'#39'c7\'#39'cf\'#39'e5 \'#39'c7\'#39 +
          'd2 \'#39'cc\'#39'da\'#39'c8\'#39'e5 \'#39'e5\'#39'c7\'#39'ed \'#39'cf\'#39'd3\'#39'ca \'#39'cf\'#39'e6\'#39'e3 \'#39'ca\' +
          #39'e6\'#39'd3\'#39'd8 \'#39'e3\'#39'd3\'#39'ca\'#39'c7\'#39'cc\'#39'd1\'#39'ed\'#39'e4 \'#39'e5\'#39'd1\'#39'90\'#39'e6\'#39'e' +
          '4\'#39'ca\'#39'e5 \'#39'ce\'#39'd3\'#39'c7\'#39'd1\'#39'ca\'#39'ed \'#39'df\'#39'e5 \'#39'e6\'#39'c7\'#39'd1\'#39'cf \'#39'd' +
          '4\'#39'e6\'#39'cf \'#39'c8\'#39'da\'#39'e5\'#39'cf\'#39'e5 \'#39'e3\'#39'd3\'#39'ca\'#39'c7\'#39'cc\'#39'd1 \'#39'e3\'#39'ed' +
          '\'#39'c8\'#39'c7\'#39'd4\'#39'cf\'#39'e6\'#39'd4\'#39'd1\'#39'df\'#39'ca \'#39'e5\'#39'ed\'#39'8d \'#39'90\'#39'e6\'#39'e4\'#39 +
          'e5 \'#39'ca\'#39'da\'#39'e5\'#39'cf\'#39'ed \'#39'e4\'#39'ce\'#39'e6\'#39'c7\'#39'e5\'#39'cf \'#39'cf\'#39'c7\'#39'd4\'#39'c' +
          'a\par'#13#10'16_\'#39'8d\'#39'e4\'#39'c7\'#39'e4\'#39'ca\'#39'8d\'#39'e5 \'#39'd3\'#39'd1\'#39'cf\'#39'ce\'#39'c7\'#39'e4\' +
          #39'e5 \'#39'c8\'#39'd1\'#39'c7\'#39'ed \'#39'df\'#39'c7\'#39'e1\'#39'c7\'#39'ed\'#39'ed \'#39'df\'#39'e5 \'#39'e6\'#39'd2\' +
          #39'e4 \'#39'c2\'#39'e4 \'#39'df\'#39'e3\'#39'ca\'#39'd1\'#39'c7\'#39'd2\'#39'cf\'#39'e5 \'#39'cf\'#39'd1\'#39'd5\'#39'cf \' +
          #39'd9\'#39'd1\'#39'dd\'#39'ed\'#39'ca \'#39'df\'#39'e1 \'#39'd3\'#39'c7\'#39'e1\'#39'e4 \'#39'c8\'#39'c7\'#39'd4\'#39'cf(5' +
          '0\'#39'ca\'#39'e4)\'#39'd1\'#39'c7\'#39'e5 \'#39'c7\'#39'e4\'#39'cf\'#39'c7\'#39'd2\'#39'ed \'#39'e6\'#39'ed\'#39'c7 \'#39'c' +
          '7\'#39'cf\'#39'c7\'#39'e3\'#39'e5 \'#39'df\'#39'c7\'#39'd1 \'#39'cf\'#39'e5\'#39'cf\'#39'ca\'#39'c7 \'#39'e3\'#39'c7\'#39'cf' +
          '\'#39'c7\'#39'e3\'#39'ed\'#39'df\'#39'e5 \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'ca\'#39'ce\'#39'e1\'#39'ed\'#39'e5 \'#39'e4\' +
          #39'd4\'#39'cf\'#39'e5 \'#39'c7\'#39'd3\'#39'ca \'#39'd5\'#39'c7\'#39'cd\'#39'c8 \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'c8\' +
          #39'c7\'#39'ed\'#39'cf \'#39'd1\'#39'e6\'#39'd2\'#39'c7\'#39'e4\'#39'e5 \'#39'cd\'#39'de \'#39'c7\'#39'e1\'#39'cd\'#39'dd\'#39 +
          'c7\'#39'd9 \'#39'cf\'#39'e5 \'#39'cf\'#39'd1\'#39'd5\'#39'cf \'#39'd9\'#39'd1\'#39'dd\'#39'ed\'#39'ca \'#39'df\'#39'e1 \' +
          #39'd3\'#39'c7\'#39'e1\'#39'e4 \'#39'd1\'#39'c7 \'#39'ca\'#39'c7\'#39'd2\'#39'e3\'#39'c7\'#39'e4 \'#39'ca\'#39'ce\'#39'e1\'#39 +
          'ed\'#39'e5 \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'c8\'#39'81\'#39'd1\'#39'cf\'#39'c7\'#39'd2\'#39'cf.\par'#13#10'17_\'#39 +
          'c8\'#39'c7 \'#39'ca\'#39'e6\'#39'cc\'#39'e5 \'#39'c8\'#39'e5 \'#39'e3\'#39'd5\'#39'e6\'#39'c8\'#39'e5 \'#39'de\'#39'c7\'#39 +
          'e4\'#39'e6\'#39'e4\'#39'ed \'#39'cf\'#39'd1 \'#39'cc\'#39'e5\'#39'ca \'#39'c7\'#39'ce\'#39'd0 \'#39'd3\'#39'e5\'#39'e3\'#39 +
          'ed\'#39'e5 \'#39'c2\'#39'e3\'#39'e6\'#39'd2\'#39'd4 \'#39'e6\'#39'81\'#39'd1\'#39'e6\'#39'd1\'#39'd4-\'#39'ca\'#39'd1\'#39'c' +
          '8\'#39'ed\'#39'ca \'#39'c8\'#39'cf\'#39'e4\'#39'ed_ \'#39'ca\'#39'cc\'#39'e5\'#39'ed\'#39'd2 \'#39'e3\'#39'cf\'#39'c7\'#39'd' +
          '1\'#39'd3 \'#39'e6\'#39'db\'#39'ed\'#39'd1\'#39'e5...\'#39'cf\'#39'd1 \'#39'd5\'#39'cf \'#39'c2\'#39'e4 \'#39'c8\'#39'd1' +
          ' \'#39'e4\'#39'd1\'#39'ce \'#39'df\'#39'd1\'#39'c7\'#39'ed\'#39'e5 \'#39'c7\'#39'dd\'#39'd2\'#39'e6\'#39'cf\'#39'e5 \'#39'e6' +
          '\'#39'cf\'#39'd1\'#39'ed\'#39'c7\'#39'dd\'#39'ca \'#39'e6\'#39'c8\'#39'e5 \'#39'cd\'#39'd3\'#39'c7\'#39'c8 \'#39'c7\'#39'cf\' +
          #39'c7\'#39'd1\'#39'c7\'#39'ca \'#39'd0\'#39'ed\'#39'e4\'#39'dd\'#39'da \'#39'e6\'#39'ce\'#39'd2\'#39'c7\'#39'e4\'#39'e5 \'#39 +
          'cf\'#39'c7\'#39'd1\'#39'ed \'#39'e6\'#39'c7\'#39'd1\'#39'ed\'#39'd2 \'#39'ce\'#39'e6\'#39'c7\'#39'e5\'#39'cf\'#39'd4\'#39'cf' +
          '.\par'#13#10'18_\'#39'cf\'#39'd1\'#39'e3\'#39'e6\'#39'de\'#39'da \'#39'ce\'#39'd1\'#39'e6\'#39'cc \'#39'df\'#39'c7\'#39'e1' +
          '\'#39'c7 \'#39'c7\'#39'd2 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'd5\'#39'c7\'#39'cd\'#39'c8 \'#39'd' +
          'f\'#39'c7\'#39'e1\'#39'c7 \'#39'e3\'#39'e6\'#39'd9\'#39'dd \'#39'c7\'#39'd3\'#39'ca \'#39'df\'#39'e1\'#39'ed\'#39'e5 \'#39'c' +
          '8\'#39'cf\'#39'e5\'#39'ed \'#39'ce\'#39'e6\'#39'cf \'#39'd1\'#39'c7 \'#39'ca\'#39'd5\'#39'dd\'#39'ed\'#39'e5 \'#39'e6\'#39'c' +
          'a\'#39'd5\'#39'dd\'#39'ed\'#39'e5 \'#39'cd\'#39'd3\'#39'c7\'#39'c8 \'#39'ce\'#39'e6\'#39'cf \'#39'd1\'#39'c7 \'#39'c8\'#39'e' +
          '5 \'#39'e3\'#39'd3\'#39'c6\'#39'e6\'#39'e1 \'#39'd3\'#39'd1\'#39'cf \'#39'ce\'#39'c7\'#39'e4\'#39'e5 \'#39'c7\'#39'd1\'#39'c' +
          '7\'#39'c6\'#39'e5 \'#39'e6\'#39'e3\'#39'c7 \'#39'c8\'#39'de\'#39'ed \'#39'df\'#39'c7\'#39'e1\'#39'c7\'#39'ed \'#39'ce\'#39'e' +
          '6\'#39'cf\'#39'd1\'#39'c7 \'#39'ce\'#39'c7\'#39'd1 \'#39'cc \'#39'e4\'#39'e3\'#39'c7\'#39'ed\'#39'cf\'#39'cf\'#39'd1 \'#39'd' +
          'b\'#39'ed\'#39'd1 \'#39'c7\'#39'ed\'#39'e4\'#39'd5\'#39'e6\'#39'd1\'#39'ca \'#39'e3\'#39'cc\'#39'e6\'#39'd2 \'#39'ca\'#39'ce' +
          '\'#39'e1\'#39'ed\'#39'e5 \'#39'c8\'#39'c7\'#39'd1 \'#39'd5\'#39'c7\'#39'cf\'#39'd1 \'#39'e4\'#39'ce\'#39'e6\'#39'c7\'#39'e5\' +
          #39'cf \'#39'd4\'#39'cf.\par'#13#10'19_\'#39'cf\'#39'd1 \'#39'd5\'#39'e6\'#39'd1\'#39'ca \'#39'c7\'#39'e4\'#39'cc\'#39'c7' +
          '\'#39'e3 \'#39'e3\'#39'da\'#39'c7\'#39'e3\'#39'e1\'#39'e5 \'#39'd5\'#39'c7\'#39'cd\'#39'c8 \'#39'c7\'#39'e6\'#39'e1\'#39'ed\' +
          #39'e5 \'#39'df\'#39'c7\'#39'e1\'#39'c7 \'#39'e3\'#39'e1\'#39'd2\'#39'e3 \'#39'c8\'#39'e5 \'#39'81\'#39'd1\'#39'cf\'#39'c7\' +
          #39'ce\'#39'ca \'#39'df\'#39'd1\'#39'c7\'#39'ed\'#39'e5 (\'#39'cd\'#39'de \'#39'c7\'#39'e1\'#39'cd\'#39'dd\'#39'c7\'#39'd9\' +
          #39'e5)\'#39'cf\'#39'd1 \'#39'e3\'#39'de\'#39'c7\'#39'c8\'#39'e1 \'#39'd4\'#39'd1\'#39'df\'#39'ca \'#39'c8\'#39'e6\'#39'cf\' +
          #39'e5 \'#39'df\'#39'e5 \'#39'cf\'#39'd1 \'#39'd2\'#39'e3\'#39'c7\'#39'e4 \'#39'c7\'#39'e4\'#39'cc\'#39'c7\'#39'e3 \'#39'e3' +
          '\'#39'da\'#39'e3\'#39'e1\'#39'e5 \'#39'd4\'#39'ce\'#39'd5 \'#39'e4\'#39'c7\'#39'e3\'#39'c8\'#39'd1\'#39'cf\'#39'e5 \'#39'e3\' +
          #39'df\'#39'e1\'#39'dd \'#39'c8\'#39'e5 \'#39'e3\'#39'd3\'#39'ca\'#39'e5\'#39'e1\'#39'df \'#39'e4\'#39'e3\'#39'e6\'#39'cf\'#39 +
          'e4 \'#39'c2\'#39'e4 \'#39'e3\'#39'ed\'#39'c8\'#39'c7\'#39'd4\'#39'cf \'#39'e6\'#39'd4\'#39'ce\'#39'd5 \'#39'ce\'#39'd1\'#39 +
          'ed\'#39'cf\'#39'c7\'#39'd1 \'#39'e5\'#39'ed\'#39'8d\'#39'90\'#39'e6\'#39'e4\'#39'e5 \'#39'cf\'#39'ed\'#39'e4\'#39'ed \'#39'e' +
          '4\'#39'd3\'#39'c8\'#39'ca \'#39'c8\'#39'e5 \'#39'df\'#39'd1\'#39'c7\'#39'ed\'#39'e5 \'#39'c7\'#39'e6\'#39'e1\'#39'ed\'#39'e5' +
          ' \'#39'ca\'#39'c7 \'#39'd2\'#39'e3\'#39'c7\'#39'e4 \'#39'c7\'#39'e4\'#39'cc\'#39'c7\'#39'e3 \'#39'e3\'#39'da\'#39'c7\'#39'e3' +
          '\'#39'e1\'#39'e5 \'#39'd1\'#39'c7 \'#39'e4\'#39'cf\'#39'c7\'#39'd4\'#39'ca\'#39'e5 \'#39'e3\'#39'90\'#39'd1 \'#39'df\'#39'd1' +
          '\'#39'c7\'#39'ed\'#39'e5 \'#39'c7\'#39'ed\'#39'df\'#39'e5 \'#39'c7\'#39'd2\'#39'ca\'#39'c7\'#39'd1\'#39'ed\'#39'ce \'#39'ce\' +
          #39'd1\'#39'ed\'#39'cf \'#39'c8\'#39'c8\'#39'da\'#39'cf \'#39'c8\'#39'e5 \'#39'df\'#39'c7\'#39'e1\'#39'c7\'#39'ed \'#39'e4\' +
          #39'90\'#39'e5\'#39'cf\'#39'c7\'#39'd1\'#39'ed \'#39'd4\'#39'cf\'#39'e5 \'#39'ca\'#39'da\'#39'e1\'#39'de \'#39'c8\'#39'90\'#39 +
          'ed\'#39'd1\'#39'cf.\par'#13#10'20_\'#39'e3\'#39'd3\'#39'ca\'#39'c7\'#39'cc\'#39'd1\'#39'ed\'#39'e4\'#39'ed \'#39'df\'#39'e' +
          '5 \'#39'd3\'#39'c7\'#39'e1\'#39'e4 \'#39'c8\'#39'd5\'#39'e6\'#39'd1\'#39'ca \'#39'cf\'#39'd1 \'#39'c8\'#39'd3\'#39'ca \'#39 +
          'df\'#39'd1\'#39'c7\'#39'ed\'#39'e5 \'#39'e3\'#39'ed\'#39'e4\'#39'e3\'#39'c7\'#39'ed\'#39'e4\'#39'cf \'#39'ce\'#39'e6\'#39'cf' +
          ' \'#39'cc\'#39'e6\'#39'c7\'#39'c8\'#39'90\'#39'e6\'#39'ed \'#39'ce\'#39'd3\'#39'c7\'#39'd1\'#39'c7\'#39'ca \'#39'c7\'#39'cd\' +
          #39'ca\'#39'e3\'#39'c7\'#39'e1\'#39'ed \'#39'c7\'#39'd2\'#39'e4\'#39'd9\'#39'd1 \'#39'd1\'#39'ed\'#39'd2\'#39'd4 \'#39'c8\'#39 +
          'c7\'#39'd1 \'#39'e6\'#39'ed\'#39'c7 \'#39'dd\'#39'd3\'#39'c7\'#39'cf \'#39'c2\'#39'e4 \'#39'c8\'#39'e6\'#39'cf\'#39'e5 \' +
          #39'e6\'#39'd4\'#39'd1\'#39'df\'#39'ca \'#39'e5\'#39'ed\'#39'8d\'#39'90\'#39'e6\'#39'e4\'#39'e5 \'#39'e3\'#39'd3\'#39'c6\'#39'e' +
          '6\'#39'e1\'#39'ed\'#39'ca\'#39'ed \'#39'cf\'#39'd1 \'#39'de\'#39'c8\'#39'c7\'#39'e1 \'#39'c2\'#39'e4\'#39'c7\'#39'e4 \'#39'e' +
          '4\'#39'cf\'#39'c7\'#39'd1\'#39'cf.  \f1\par'#13#10'\pard\ltrpar\qr\par'#13#10'\par'#13#10'}'#13#10#0
        RemoveEmptyLines = False
        mmHeight = 142875
        mmLeft = 0
        mmTop = 111654
        mmWidth = 197380
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = '('#1602#1585#1575#1585#1583#1575#1583' '#1575#1580#1575#1585#1607')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8975
        mmLeft = 158644
        mmTop = 7144
        mmWidth = 30649
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1588#1607#1585#1587#1578#1575#1606' '#1588#1575#1607#1585#1608#1583' - '#1587#1585#1583#1582#1575#1606#1607' '#1578#1608#1581#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 66675
        mmTop = 11377
        mmWidth = 64029
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblAllStringReplace: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblAllStringReplace'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = 
          '6 - '#1603#1604' '#1603#1585#1575#1610#1607' ('#1581#1602' '#1575#1604#1581#1601#1575#1592' '#1608' '#1581#1605#1604') '#1576#1575#1576#1578' '#1592#1585#1601#1610#1578' '#1605#1608#1585#1583' '#1602#1585#1575#1585#1583#1575#1583' '#1605#1576#1604#1594' '#1580#1605#1593#1605 +
          #1576#1604#1594' '#1585#1610#1575#1604' '#1603#1607' '#1605#1576#1575#1604#1594' '#1570#1606' '#1576#1589#1608#1585#1578' '#1586#1610#1585' '#1583#1585#1610#1575#1601#1578' '#1711#1585#1583#1610#1583'.'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4318
        mmLeft = 24511
        mmTop = 64294
        mmWidth = 167048
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 22225
        mmTop = 260615
        mmWidth = 40746
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = '('#1587#1607#1575#1605#1610' '#1582#1575#1589' )'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 33867
        mmTop = 267494
        mmWidth = 17463
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonName1'
        DataPipeline = ppDBPipeline1Recipts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1Recipts'
        mmHeight = 5027
        mmLeft = 164042
        mmTop = 260615
        mmWidth = 1058
        BandType = 10
        LayerName = PageLayer1
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer5
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 10848
        mmLeft = 133350
        mmTop = 794
        mmWidth = 22225
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppRecFooterLine: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'RecFooterLine'
          Border.mmPadding = 0
          Visible = False
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 149489
          mmTop = 7409
          mmWidth = 13229
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1Recipts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1Recipts'
        mmHeight = 7673
        mmLeft = 14288
        mmTop = 10848
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1Recipts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1Recipts'
        mmHeight = 7673
        mmLeft = 14288
        mmTop = 1588
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 31750
        mmTop = 1852
        mmWidth = 9790
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 31750
        mmTop = 11113
        mmWidth = 10583
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label103'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6265
        mmLeft = 72650
        mmTop = 1588
        mmWidth = 51816
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606':'#8207'3336116'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 10319
        mmTop = 19844
        mmWidth = 21167
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblAllStringReplace1'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = '1- '#1606#1575#1605' '#1608' '#1570#1583#1585#1587' '#1605#1578#1602#1575#1590#1610' :  '#1591#1585#1601#1602#1585#1583#1575#1583'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5080
        mmLeft = 127720
        mmTop = 26194
        mmWidth = 63839
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = '2- '#1592#1585#1601#1610#1578' '#1605#1608#1585#1583' '#1602#1585#1575#1583#1575#1583' : '#1580#1605#1593#1608#1586#1606#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5080
        mmLeft = 136863
        mmTop = 33602
        mmWidth = 54695
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label301'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = 
          '3 - '#1605#1583#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575' '#1583#1585' '#1587#1585#1583#1582#1575#1606#1607' '#1575#1586'                   '#1575#1604#1610 +
          ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5080
        mmLeft = 82677
        mmTop = 40481
        mmWidth = 108882
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ReciptStartDate'
        DataPipeline = ppDBPipeline1Recipts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1Recipts'
        mmHeight = 7673
        mmLeft = 102659
        mmTop = 39158
        mmWidth = 1058
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ReciptEndDate'
        DataPipeline = ppDBPipeline1Recipts
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1Recipts'
        mmHeight = 7673
        mmLeft = 70644
        mmTop = 39158
        mmWidth = 1058
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label32'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = 
          '5 - '#1580#1607#1578' '#1607#1586#1610#1606#1607' '#1581#1605#1604' '#1607#1585' '#1603#1610#1604#1608' '#1576#1575#1585' '#1608#1575#1585#1583#1607' '#1576#1607' '#1587#1585#1583#1582#1575#1606#1607' '#1575#1586' '#1585#1608#1610' '#1587#1603#1608' '#1576#1583#1575#1582#1604' ' +
          #1587#1575#1604#1606' '#1608' '#1576#1575' '#1604#1593#1603#1587
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5080
        mmLeft = 39581
        mmTop = 55827
        mmWidth = 151977
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        OnGetText = ppLblAllStringReplaceGetText
        Border.mmPadding = 0
        Caption = '4 - '#1581#1602' '#1575#1604#1581#1601#1575#1592#1607' ('#1606#1711#1607#1583#1575#1585') '#1576#1585#1575#1610' '#1607#1585' '#1578#1606' '#1583#1585' '#1585#1608#1586'  2858  '#1585#1610#1575#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5080
        mmLeft = 94277
        mmTop = 48419
        mmWidth = 97282
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape1'
        mmHeight = 6879
        mmLeft = 0
        mmTop = 75936
        mmWidth = 197380
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 176742
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1587#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 135732
        mmTop = 76465
        mmWidth = 40217
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 105304
        mmTop = 76465
        mmWidth = 29369
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label37'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 84402
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 63500
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label39'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 42598
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label40'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1593#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 21696
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label401'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 76465
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 176213
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 21167
        mmTop = 76200
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 42069
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 62971
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 83873
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 104775
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 135202
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 0
        mmTop = 76200
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 33602
        mmLeft = 194469
        mmTop = 76200
        mmWidth = 2910
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 87313
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 94192
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 101336
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 107950
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 176742
        mmTop = 83079
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 176742
        mmTop = 89959
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 176742
        mmTop = 96838
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 176742
        mmTop = 103981
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'StoreID'
      DataPipeline = ppDBPipeline1Recipts
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1Recipts'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1Recipts: TppDBPipeline
    DataSource = srcRecipts
    UserName = 'DBPipeline1Recipts'
    Left = 688
    Top = 343
    object ppDBPipeline1ReciptsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ReciptsppField2: TppField
      FieldAlias = '_StoresName'
      FieldName = '_StoresName'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPipeline1ReciptsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ReciptsppField4: TppField
      FieldAlias = #1578#1575#1585#1610#1582' __'#1601#1585#1605
      FieldName = 'ReciptDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ReciptsppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ReciptsppField6: TppField
      FieldAlias = '_PersonAddress'
      FieldName = '_PersonAddress'
      FieldLength = 120
      DisplayWidth = 120
      Position = 5
    end
    object ppDBPipeline1ReciptsppField7: TppField
      FieldAlias = '_PersonTel'
      FieldName = '_PersonTel'
      FieldLength = 120
      DisplayWidth = 120
      Position = 6
    end
    object ppDBPipeline1ReciptsppField8: TppField
      FieldAlias = '_PersonPostalCode'
      FieldName = '_PersonPostalCode'
      FieldLength = 120
      DisplayWidth = 120
      Position = 7
    end
    object ppDBPipeline1ReciptsppField9: TppField
      FieldAlias = '_PersonEconomicNumber'
      FieldName = '_PersonEconomicNumber'
      FieldLength = 120
      DisplayWidth = 120
      Position = 8
    end
    object ppDBPipeline1ReciptsppField10: TppField
      FieldAlias = '_PersonName1'
      FieldName = '_PersonName1'
      FieldLength = 120
      DisplayWidth = 120
      Position = 9
    end
    object ppDBPipeline1ReciptsppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ReciptsppField12: TppField
      FieldAlias = '_PersonName2'
      FieldName = '_PersonName2'
      FieldLength = 120
      DisplayWidth = 120
      Position = 11
    end
    object ppDBPipeline1ReciptsppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ReciptsppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServiceValue'
      FieldName = 'ServiceValue'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline1ReciptsppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptValue'
      FieldName = 'ReciptValue'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object ppDBPipeline1ReciptsppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalValue'
      FieldName = 'TotalValue'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object ppDBPipeline1ReciptsppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'AddDecValue'
      FieldName = 'AddDecValue'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 16
    end
    object ppDBPipeline1ReciptsppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ReciptsppField19: TppField
      FieldAlias = 'DocDate'
      FieldName = 'DocDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ReciptsppField20: TppField
      FieldAlias = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      FieldName = 'ReciptNote'
      FieldLength = 250
      DisplayWidth = 250
      Position = 19
    end
    object ppDBPipeline1ReciptsppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ParentReciptID'
      FieldName = 'ParentReciptID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ReciptsppField22: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 21
    end
    object ppDBPipeline1ReciptsppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptState'
      FieldName = 'ReciptState'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline1ReciptsppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline1ReciptsppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ReciptsppField26: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline1ReciptsppField27: TppField
      FieldAlias = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      FieldName = 'ExpireDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ReciptsppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'SecondType'
      FieldName = 'SecondType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ReciptsppField29: TppField
      Alignment = taRightJustify
      FieldAlias = '_ValuationType'
      FieldName = '_ValuationType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ReciptsppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline1ReciptsppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'OperatorID'
      FieldName = 'OperatorID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipeline1ReciptsppField32: TppField
      FieldAlias = '_PersonFax'
      FieldName = '_PersonFax'
      FieldLength = 100
      DisplayWidth = 100
      Position = 31
    end
    object ppDBPipeline1ReciptsppField33: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ReciptsppField34: TppField
      Alignment = taRightJustify
      FieldAlias = '_CustValuationType'
      FieldName = '_CustValuationType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppDBPipeline1ReciptsppField35: TppField
      Alignment = taRightJustify
      FieldAlias = '_StoreKind'
      FieldName = '_StoreKind'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppDBPipeline1ReciptsppField36: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppDBPipeline1ReciptsppField37: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppDBPipeline1ReciptsppField38: TppField
      FieldAlias = 'ReciptStartDate'
      FieldName = 'ReciptStartDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipeline1ReciptsppField39: TppField
      FieldAlias = 'ReciptEndDate'
      FieldName = 'ReciptEndDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipeline1ReciptsppField40: TppField
      Alignment = taRightJustify
      FieldAlias = '_HasDeficit'
      FieldName = '_HasDeficit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppDBPipeline1ReciptsppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebtControlActive'
      FieldName = 'DebtControlActive'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 40
    end
    object ppDBPipeline1ReciptsppField42: TppField
      FieldAlias = 'UseOtherID'
      FieldName = 'UseOtherID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 41
    end
    object ppDBPipeline1ReciptsppField43: TppField
      FieldAlias = 'InsertDate'
      FieldName = 'InsertDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 42
    end
    object ppDBPipeline1ReciptsppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 43
    end
    object ppDBPipeline1ReciptsppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptStartDateToEnd'
      FieldName = 'ReciptStartDateToEnd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
  end
  object ppDBPipeline2FormItemsCheck: TppDBPipeline
    DataSource = srcFormItemsCheck
    UserName = 'DBPipeline2FormItemsCheck'
    Left = 557
    Top = 200
    MasterDataPipelineName = 'ppDBPipeline4FormsCheck'
    object ppDBPipeline2FormItemsCheckppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormItemID'
      FieldName = 'FormItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline2FormItemsCheckppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormID'
      FieldName = 'FormID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2FormItemsCheckppField3: TppField
      Alignment = taRightJustify
      FieldAlias = #1585#1583#1610#1601
      FieldName = 'Row'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline2FormItemsCheckppField4: TppField
      FieldAlias = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDBPipeline2FormItemsCheckppField5: TppField
      FieldAlias = #1578#1575#1585#1610#1582' '#1670#1603
      FieldName = 'CheckDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline2FormItemsCheckppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CheckType'
      FieldName = 'CheckType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline2FormItemsCheckppField7: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline2FormItemsCheckppField8: TppField
      FieldAlias = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ItemNote'
      FieldLength = 255
      DisplayWidth = 255
      Position = 7
    end
    object ppDBPipeline2FormItemsCheckppField9: TppField
      FieldAlias = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBPipeline2FormItemsCheckppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline2FormItemsCheckppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline2FormItemsCheckppField12: TppField
      FieldAlias = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'AccountNumber'
      FieldLength = 25
      DisplayWidth = 25
      Position = 11
    end
    object ppDBPipeline2FormItemsCheckppField13: TppField
      FieldAlias = #1588#1607#1585
      FieldName = 'City'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline2FormItemsCheckppField14: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline2FormItemsCheckppField15: TppField
      FieldAlias = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 14
    end
    object ppDBPipeline2FormItemsCheckppField16: TppField
      FieldAlias = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 15
    end
    object ppDBPipeline2FormItemsCheckppField17: TppField
      FieldAlias = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopicCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 16
    end
    object ppDBPipeline2FormItemsCheckppField18: TppField
      FieldAlias = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'CTopicCode2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 17
    end
    object ppDBPipeline2FormItemsCheckppField19: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline2FormItemsCheckppField20: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1591#1585#1581
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline2FormItemsCheckppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'preFormItemID'
      FieldName = 'preFormItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline2FormItemsCheckppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'AidInfoNo'
      FieldName = 'AidInfoNo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline2FormItemsCheckppField23: TppField
      FieldAlias = 'AidInfoDate'
      FieldName = 'AidInfoDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline2FormItemsCheckppField24: TppField
      FieldAlias = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = '_Cudtomername2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object ppDBPipeline2FormItemsCheckppField25: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 24
    end
    object ppDBPipeline2FormItemsCheckppField26: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppDBPipeline2FormItemsCheckppField27: TppField
      FieldAlias = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      FieldLength = 32
      DisplayWidth = 32
      Position = 26
    end
  end
  object qryCustomer: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      #13'SELECT    dbo.Customers.CustID, dbo.Customers.CustName'
      'FROM       dbo.Customers LEFT OUTER JOIN'
      
        '                  dbo.CustomersGroup ON dbo.Customers.CustomerGr' +
        'pID = '
      '                  dbo.CustomersGroup.CustomerGrpID')
    Left = 464
    Top = 160
  end
  object qryFormItemsCheck: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFormItemsCheckBeforeInsert
    AfterInsert = qryFormItemsCheckAfterInsert
    BeforeEdit = qryFormItemsCheckBeforeEdit
    AfterEdit = qryFormItemsCheckAfterEdit
    BeforePost = qryFormItemsCheckBeforePost
    BeforeDelete = qryFormItemsCheckBeforeDelete
    AfterDelete = qryFormItemsCheckAfterDelete
    Parameters = <
      item
        Name = 'FormID'
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
      'SELECT     *'
      'FROM         FormItems  '
      'where FormID=:FormID'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 384
    Top = 206
    object qryFormItemsCheckFormItemID: TIntegerField
      FieldName = 'FormItemID'
      Required = True
    end
    object qryFormItemsCheckFormID: TIntegerField
      Tag = 3
      FieldName = 'FormID'
    end
    object qryFormItemsCheckRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
    end
    object qryFormItemsCheckCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      Required = True
      FixedChar = True
      Size = 15
    end
    object qryFormItemsCheckCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      Required = True
      EditMask = '!9999/99/00;1;_'
      Size = 10
    end
    object qryFormItemsCheckCheckType: TWordField
      Tag = 3
      FieldName = 'CheckType'
    end
    object qryFormItemsCheckItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryFormItemsCheckItemNote: TStringField
      Tag = 3
      DisplayLabel = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryFormItemsCheckBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
      Required = True
    end
    object qryFormItemsCheckServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormItemsCheckYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormItemsCheckAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryFormItemsCheckCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      FixedChar = True
    end
    object qryFormItemsCheckCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID2'
    end
    object qryFormItemsCheckTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormItemsCheckDetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryFormItemsCheckCTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryFormItemsCheckCTopicCode2: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryFormItemsCheckBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryFormItemsCheckProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1591#1585#1581
      FieldName = 'ProjectID'
    end
    object qryFormItemsCheckpreFormItemID: TIntegerField
      Tag = 3
      FieldName = 'preFormItemID'
    end
    object qryFormItemsCheckAidInfoNo: TStringField
      Tag = 3
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormItemsCheckAidInfoDate: TStringField
      Tag = 3
      FieldName = 'AidInfoDate'
      FixedChar = True
      Size = 10
    end
    object qryFormItemsCheck_Cudtomername2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_Cudtomername2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 60
      Lookup = True
    end
    object qryFormItemsCheckFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormItemsCheckLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormItemsCheckAccountNumberNew: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      Size = 32
    end
  end
  object PopChoose: TPopupMenu
    AutoHotkeys = maManual
    Left = 143
    Top = 392
    object N13: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1603#1607#1575' '#1575#1586' '#1583#1610#1587#1603#1578' '#1576#1575#1606#1603' '#1605#1604#1610
    end
    object N12: TMenuItem
      Action = actselectCheck
    end
  end
  object popprint: TPopupMenu
    AutoHotkeys = maManual
    Left = 224
    Top = 423
    object mnuPrint1: TMenuItem
      Caption = #1670#1575#1662'1'
      object N1Print1: TMenuItem
        Caption = #1602#1585#1575#1585#1583#1575#1583' '#1580#1575#1585#1610
        OnClick = AllC_L_i_c_k_Click
      end
      object N2Print1: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object mnuPrint2: TMenuItem
      Caption = #1670#1575#1662'2'
      object N1Print2: TMenuItem
        Caption = #1602#1585#1575#1585#1583#1575#1583' '#1580#1575#1585#1610
        OnClick = AllC_L_i_c_k_Click
      end
      object N2Print2: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object AllC_L_i_c_k_: TMenuItem
      Caption = 'Hint _ Tag'
      Visible = False
      OnClick = AllC_L_i_c_k_Click
    end
  end
  object qryCustomers1: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        #13'SELECT     dbo.Customers.CustID, dbo.Customers.CustName, dbo.Cu' +
        'stomers.Address, dbo.Customers.Tel, dbo.Customers.PostalCode, '
      
        '                      dbo.Customers.EconomicNumber, dbo.Customer' +
        's.Fax, dbo.Customers.ValuationType, dbo.Customers.MaxCredit'
      'FROM         dbo.Customers INNER JOIN'
      
        '                      dbo.CustomersGroup ON dbo.Customers.Custom' +
        'erGrpID = dbo.CustomersGroup.CustomerGrpID')
    Left = 251
    Top = 9
  end
  object qryStores: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     n_StoreID, c_StoreName,n_ValuationType,StoreKind,HasD' +
        'eficit, Stores.TypeOfSale'
      ''
      'FROM         Stores')
    Left = 405
    Top = 114
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        StuffCoding.c_StuffCode, StuffCoding.c_StuffName, ' +
        'Units.UnitName, StuffCoding.c_StuffTecInfo, StuffCoding.Carton, ' +
        'StuffCoding.SellPrice1, StuffCoding.SellPrice2, StuffCoding.Sell' +
        'Price3, StuffCoding.SellPrice4, '
      
        '                         StuffCoding.StandardRate, StuffCoding.B' +
        'uyPrice, StuffCoding.VatExempt'
      'FROM            Units INNER JOIN'
      
        '                         StuffCoding ON Units.UnitCode = StuffCo' +
        'ding.n_UnitCode')
    Left = 168
    Top = 105
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
    Left = 476
    Top = 7
  end
  object qryRecipts: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryReciptsAfterInsert
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
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      
        '--,DATEDIFF(DAY, dbo.ShamsiToMiladi(ReciptStartDate), dbo.Shamsi' +
        'ToMiladi(ReciptEndDate))  AS ReciptStartDateToEnd '
      ', -1  AS ReciptStartDateToEnd '
      ' FROM    Recipts'
      ''
      'WHERE     (ReciptType = :ReciptType)'
      'and ( YearID = :YearID )'
      ''
      'ORDER BY ReciptNumber')
    Left = 415
    Top = 8
    object qryReciptsStoreID: TSmallintField
      FieldName = 'StoreID'
      Required = True
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
      FieldName = 'ReciptNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' __'#1601#1585#1605
      FieldName = 'ReciptDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      FieldName = 'PersonID1'
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
    end
    object qryRecipts_PersonName2: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName2'
      LookupDataSet = qryCustomers1
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
      Size = 250
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
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
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
    object qryReciptsDebtControlActive: TWordField
      FieldName = 'DebtControlActive'
    end
    object qryReciptsUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryReciptsInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryReciptsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptsReciptStartDateToEnd: TIntegerField
      FieldName = 'ReciptStartDateToEnd'
      ReadOnly = True
    end
  end
  object srcRecipts: TDataSource
    AutoEdit = False
    DataSet = qryRecipts
    OnStateChange = srcReciptsStateChange
    Left = 344
    Top = 9
  end
  object qryReciptsItems: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryReciptsItemsBeforeInsert
    AfterInsert = qryReciptsItemsAfterInsert
    BeforeEdit = qryReciptsItemsBeforeEdit
    AfterEdit = qryReciptsItemsAfterEdit
    BeforePost = qryReciptsItemsBeforePost
    BeforeDelete = qryReciptsItemsBeforeDelete
    AfterDelete = qryReciptsItemsAfterDelete
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
      'SELECT   *,'
      '  (TotalInputPrice + TotalOutputPrice)'
      
        '  +  (InputEntity + OutputEntity) * UnitCommission +ROUND((Input' +
        'Weight + OutputWeight) * Commission,0)- DeficitValue - DeficitVa' +
        'lue2 - DeficitValue4 AS TotalDeficient'
      ' FROM      ReciptItems'
      'WHERE  ReciptID = :ReciptID'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )'
      'ORDER BY     ReciptItemID')
    Left = 69
    Top = 296
    object qryReciptsItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
      Required = True
    end
    object qryReciptsItemsReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
    end
    object qryReciptsItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
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
    object qryReciptsItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptsItems_UnitName: TStringField
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
    object qryReciptsItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1608#1585#1608#1583#1610
      FieldName = 'InputEntity'
    end
    object qryReciptsItemsOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1608#1580#1610
      FieldName = 'OutputEntity'
    end
    object qryReciptsItemsInputWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1608#1585#1608#1583#1610
      FieldName = 'InputWeight'
      OnChange = qryReciptsItemsInputWeightChange
    end
    object qryReciptsItemsOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1585#1608#1580#1610
      FieldName = 'OutputWeight'
      OnChange = qryReciptsItemsInputWeightChange
    end
    object qryReciptsItemsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      OnChange = qryReciptsItemsInputWeightChange
      currency = True
      Precision = 19
    end
    object qryReciptsItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      OnChange = qryReciptsItemsTotalInputPriceChange
      currency = True
      Precision = 19
    end
    object qryReciptsItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      OnChange = qryReciptsItemsTotalInputPriceChange
      currency = True
      Precision = 19
    end
    object qryReciptsItemsUnitSellPrice2: TBCDField
      DisplayLabel = #1606#1585#1582' '#1582#1583#1605#1575#1578' '#1575#1590#1575#1601#1610
      FieldName = 'UnitSellPrice2'
      currency = True
      Precision = 19
    end
    object qryReciptsItemsDeficitValue: TBCDField
      DisplayLabel = #1578#1608#1602#1601#8207#1575#1590#1575#1601#1610
      FieldName = 'DeficitValue'
      OnChange = qryReciptsItemsTotalInputPriceChange
      currency = True
      Precision = 19
    end
    object qryReciptsItemsTotallSellPrice: TBCDField
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptsItemsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryReciptsItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptsItemsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptsItemsProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryReciptsItemsProductModel: TIntegerField
      FieldName = 'ProductModel'
    end
    object qryReciptsItemsDeficitValue2: TBCDField
      DisplayLabel = #1578#1582#1601#1740#1601'2'
      FieldName = 'DeficitValue2'
      OnChange = qryReciptsItemsDeficitValue2Change
      Precision = 19
    end
    object qryReciptsItemsDeficitValue3: TBCDField
      DisplayLabel = #1578#1582#1601#1740#1601'3'
      FieldName = 'DeficitValue3'
      OnChange = qryReciptsItemsDeficitValue3Change
      Precision = 19
    end
    object qryReciptsItemsDeficitValue4: TBCDField
      DisplayLabel = #1578#1582#1601#1740#1601'4'
      FieldName = 'DeficitValue4'
      OnChange = qryReciptsItemsDeficitValue4Change
      Precision = 19
    end
    object qryReciptsItemsTotalDeficient: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1576#1575' '#1578#1582#1601#1610#1601
      FieldName = 'TotalDeficient'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcReciptsItems: TDataSource
    DataSet = qryReciptsItems
    OnStateChange = srcReciptsItemsStateChange
    Left = 68
    Top = 353
  end
  object qryFormsCheck: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryFormsCheckAfterInsert
    AfterEdit = qryFormsCheckAfterEdit
    BeforePost = qryFormsCheckBeforePost
    AfterPost = qryFormsCheckAfterPost
    BeforeCancel = qryFormsCheckBeforeCancel
    BeforeDelete = qryFormsCheckBeforeDelete
    AfterScroll = qryFormsCheckAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptID'
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
      'FROM         Forms'
      'where (FormType= :FormType ) and ( ReciptID= :ReciptID)'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 240
    Top = 288
    object WordField1: TWordField
      FieldName = 'FormType'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      Required = True
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID1'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'CustomerID2'
    end
    object BCDField1: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      Required = True
      currency = True
      Precision = 19
    end
    object IntegerField5: TIntegerField
      FieldName = 'BudgetCode'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsCheckTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsCheckServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsCheckYearID: TIntegerField
      FieldName = 'YearID'
    end
    object StringField3: TStringField
      FieldName = 'DetailCode'
      Size = 12
    end
    object StringField4: TStringField
      FieldName = 'CTopicCode'
      Size = 12
    end
    object StringField5: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsCheckAidInfoNo: TStringField
      Tag = 3
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object StringField6: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object StringField7: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerName2'
      Size = 100
    end
    object StringField10: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName_L1'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCode'
      Size = 150
      Lookup = True
    end
    object StringField11: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName2_L1'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2_L2'
      KeyFields = 'CTopicCode2'
      Size = 150
      Lookup = True
    end
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailsName_L1'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCode'
      Size = 150
      Lookup = True
    end
    object StringField13: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicCodeName_L1'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCode'
      Size = 150
      Lookup = True
    end
    object StringField14: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_CustomerName'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      Required = True
      Size = 150
      Lookup = True
    end
    object WordField3: TWordField
      FieldName = 'TopicTypes'
    end
    object WordField2: TWordField
      FieldName = 'PayTypes'
    end
    object IntegerField7: TIntegerField
      FieldName = 'DocNo'
    end
    object StringField15: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object StringField17: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object StringField18: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object IntegerField8: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryFormsCheckFormID: TIntegerField
      FieldName = 'FormID'
    end
  end
  object srcFormsCheck: TDataSource
    DataSet = qryFormsCheck
    OnStateChange = srcFormsCheckStateChange
    Left = 432
    Top = 287
  end
  object ppDBPipeline3Forms: TppDBPipeline
    DataSource = frmGrdvjhnghd1.srcFormsFr
    UserName = 'DBPipeline3Forms'
    Left = 512
    Top = 279
    MasterDataPipelineName = 'ppDBPipeline1Recipts'
    object ppDBPipeline3FormsppField1: TppField
      FieldAlias = '_CustomerName'
      FieldName = '_CustomerName'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline3FormsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormID'
      FieldName = 'FormID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline3FormsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline3FormsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline3FormsppField5: TppField
      FieldAlias = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline3FormsppField6: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline3FormsppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CustomerID2'
      FieldName = 'CustomerID2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline3FormsppField8: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1576#1604#1594
      FieldName = 'Amount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline3FormsppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline3FormsppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline3FormsppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'BudgetCode'
      FieldName = 'BudgetCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline3FormsppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline3FormsppField13: TppField
      FieldAlias = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 12
    end
    object ppDBPipeline3FormsppField14: TppField
      FieldAlias = 'DetailCode'
      FieldName = 'DetailCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 13
    end
    object ppDBPipeline3FormsppField15: TppField
      FieldAlias = 'CTopicCode'
      FieldName = 'CTopicCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 14
    end
    object ppDBPipeline3FormsppField16: TppField
      FieldAlias = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'FomNote'
      FieldLength = 255
      DisplayWidth = 255
      Position = 15
    end
    object ppDBPipeline3FormsppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'AidInfoNo'
      FieldName = 'AidInfoNo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline3FormsppField18: TppField
      FieldAlias = 'AidInfoDate'
      FieldName = 'AidInfoDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline3FormsppField19: TppField
      FieldAlias = 'CTopicCode2'
      FieldName = 'CTopicCode2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 18
    end
    object ppDBPipeline3FormsppField20: TppField
      FieldAlias = 'CustomerName2'
      FieldName = 'CustomerName2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object ppDBPipeline3FormsppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'PayTypes'
      FieldName = 'PayTypes'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline3FormsppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'TopicTypes'
      FieldName = 'TopicTypes'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline3FormsppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline3FormsppField24: TppField
      FieldAlias = 'DocDate'
      FieldName = 'DocDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline3FormsppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormState'
      FieldName = 'FormState'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline3FormsppField26: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppDBPipeline3FormsppField27: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppDBPipeline3FormsppField28: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 27
    end
    object ppDBPipeline3FormsppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
  end
  object ppDBPipeline4FormsCheck: TppDBPipeline
    DataSource = srcFormsCheck
    UserName = 'DBPipeline4FormsCheck'
    Left = 559
    Top = 383
    MasterDataPipelineName = 'ppDBPipeline1Recipts'
    object ppDBPipeline4FormsCheckppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline4FormsCheckppField2: TppField
      Alignment = taRightJustify
      FieldAlias = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline4FormsCheckppField3: TppField
      FieldAlias = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline4FormsCheckppField4: TppField
      Alignment = taRightJustify
      FieldAlias = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline4FormsCheckppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CustomerID2'
      FieldName = 'CustomerID2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline4FormsCheckppField6: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1576#1604#1594
      FieldName = 'Amount'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline4FormsCheckppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'BudgetCode'
      FieldName = 'BudgetCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline4FormsCheckppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline4FormsCheckppField9: TppField
      FieldAlias = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppDBPipeline4FormsCheckppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline4FormsCheckppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline4FormsCheckppField12: TppField
      FieldAlias = 'DetailCode'
      FieldName = 'DetailCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppDBPipeline4FormsCheckppField13: TppField
      FieldAlias = 'CTopicCode'
      FieldName = 'CTopicCode'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object ppDBPipeline4FormsCheckppField14: TppField
      FieldAlias = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'FomNote'
      FieldLength = 255
      DisplayWidth = 255
      Position = 13
    end
    object ppDBPipeline4FormsCheckppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'AidInfoNo'
      FieldName = 'AidInfoNo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline4FormsCheckppField16: TppField
      FieldAlias = 'AidInfoDate'
      FieldName = 'AidInfoDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline4FormsCheckppField17: TppField
      FieldAlias = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerName2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 16
    end
    object ppDBPipeline4FormsCheckppField18: TppField
      FieldAlias = '_CTopicName_L1'
      FieldName = '_CTopicName_L1'
      FieldLength = 150
      DisplayWidth = 150
      Position = 17
    end
    object ppDBPipeline4FormsCheckppField19: TppField
      FieldAlias = '_CTopicName2_L1'
      FieldName = '_CTopicName2_L1'
      FieldLength = 150
      DisplayWidth = 150
      Position = 18
    end
    object ppDBPipeline4FormsCheckppField20: TppField
      FieldAlias = '_DetailsName_L1'
      FieldName = '_DetailsName_L1'
      FieldLength = 150
      DisplayWidth = 150
      Position = 19
    end
    object ppDBPipeline4FormsCheckppField21: TppField
      FieldAlias = '_TopicCodeName_L1'
      FieldName = '_TopicCodeName_L1'
      FieldLength = 150
      DisplayWidth = 150
      Position = 20
    end
    object ppDBPipeline4FormsCheckppField22: TppField
      FieldAlias = #1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = '_CustomerName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 21
    end
    object ppDBPipeline4FormsCheckppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TopicTypes'
      FieldName = 'TopicTypes'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline4FormsCheckppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'PayTypes'
      FieldName = 'PayTypes'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline4FormsCheckppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocNo'
      FieldName = 'DocNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline4FormsCheckppField26: TppField
      FieldAlias = 'DocDate'
      FieldName = 'DocDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline4FormsCheckppField27: TppField
      FieldAlias = 'CTopicCode2'
      FieldName = 'CTopicCode2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 26
    end
    object ppDBPipeline4FormsCheckppField28: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 27
    end
    object ppDBPipeline4FormsCheckppField29: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppDBPipeline4FormsCheckppField30: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppDBPipeline4FormsCheckppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipeline4FormsCheckppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'FormID'
      FieldName = 'FormID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
  end
  object qryCustomersActivity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        SellsTypes.SellsTypeName, SellsInfo.SellsName, Cus' +
        'tomersActivity.Number, CustomersActivity.Capacity, CustomersActi' +
        'vity.NumberCapacity, CustomersActivity.ActivityNote, CustomersAc' +
        'tivity.Elective'
      'FROM            CustomersActivity INNER JOIN'
      
        '                         SellsTypes ON CustomersActivity.SellsTy' +
        'pe = SellsTypes.SellsType INNER JOIN'
      
        '                         SellsInfo ON SellsTypes.SellsType = Sel' +
        'lsInfo.SellsType AND CustomersActivity.SellsCode = SellsInfo.Sel' +
        'lsCode'
      'WHERE        (CustomersActivity.PersonID1 = :CustID )')
    Left = 264
    Top = 124
  end
  object dsCustomersActivity: TDataSource
    DataSet = qryCustomersActivity
    Left = 360
    Top = 152
  end
  object plnCustomersActivity: TppDBPipeline
    DataSource = dsCustomersActivity
    UserName = 'plnCustomersActivity'
    Left = 160
    Top = 167
    MasterDataPipelineName = 'ppDBPipeline1Recipts'
  end
  object plnReciptsItems: TppDBPipeline
    DataSource = srcReciptsItems
    UserName = 'plnReciptsItems'
    Left = 309
    Top = 328
    object plnReciptsItemsppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plnReciptsItemsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plnReciptsItemsppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plnReciptsItemsppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plnReciptsItemsppField5: TppField
      FieldAlias = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
      FieldName = '_StuffName'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object plnReciptsItemsppField6: TppField
      FieldAlias = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object plnReciptsItemsppField7: TppField
      FieldAlias = #1608#1575#1581#1583
      FieldName = '_UnitName'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plnReciptsItemsppField8: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1602#1583#1575#1585' '#1608#1585#1608#1583#1610
      FieldName = 'InputEntity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plnReciptsItemsppField9: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1602#1583#1575#1585' '#1582#1585#1608#1580#1610
      FieldName = 'OutputEntity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plnReciptsItemsppField10: TppField
      Alignment = taRightJustify
      FieldAlias = #1608#1586#1606' '#1608#1585#1608#1583#1610
      FieldName = 'InputWeight'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plnReciptsItemsppField11: TppField
      Alignment = taRightJustify
      FieldAlias = #1608#1586#1606' '#1582#1585#1608#1580#1610
      FieldName = 'OutputWeight'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plnReciptsItemsppField12: TppField
      Alignment = taRightJustify
      FieldAlias = #1576#1607#1575#1610' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plnReciptsItemsppField13: TppField
      Alignment = taRightJustify
      FieldAlias = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plnReciptsItemsppField14: TppField
      Alignment = taRightJustify
      FieldAlias = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object plnReciptsItemsppField15: TppField
      Alignment = taRightJustify
      FieldAlias = #1606#1585#1582' '#1582#1583#1605#1575#1578' '#1575#1590#1575#1601#1610
      FieldName = 'UnitSellPrice2'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object plnReciptsItemsppField16: TppField
      Alignment = taRightJustify
      FieldAlias = #1578#1608#1602#1601#8207#1575#1590#1575#1601#1610
      FieldName = 'DeficitValue'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object plnReciptsItemsppField17: TppField
      Alignment = taRightJustify
      FieldAlias = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 16
    end
    object plnReciptsItemsppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object plnReciptsItemsppField19: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object plnReciptsItemsppField20: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object plnReciptsItemsppField21: TppField
      FieldAlias = 'ProductCode'
      FieldName = 'ProductCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 20
    end
    object plnReciptsItemsppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object plnReciptsItemsppField23: TppField
      Alignment = taRightJustify
      FieldAlias = #1578#1582#1601#1740#1601'2'
      FieldName = 'DeficitValue2'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 22
    end
    object plnReciptsItemsppField24: TppField
      Alignment = taRightJustify
      FieldAlias = #1578#1582#1601#1740#1601'3'
      FieldName = 'DeficitValue3'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 23
    end
    object plnReciptsItemsppField25: TppField
      Alignment = taRightJustify
      FieldAlias = #1578#1582#1601#1740#1601'4'
      FieldName = 'DeficitValue4'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 24
    end
    object plnReciptsItemsppField26: TppField
      Alignment = taRightJustify
      FieldAlias = #1605#1576#1604#1594' '#1576#1575' '#1578#1582#1601#1610#1601
      FieldName = 'TotalDeficient'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 25
    end
  end
end

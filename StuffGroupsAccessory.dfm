inherited StuffGroupsAccessoryF: TStuffGroupsAccessoryF
  Left = 276
  Top = 83
  Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1585#1593#1610' '#1705#1575#1604#1575
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    TabOrder = 1
    DesignSize = (
      782
      41)
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 5
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 474
      Top = 1
      Width = 307
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 482
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 231
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 0
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
        Left = 155
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 0
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 79
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 0
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn6: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 0
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actGetExcel
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606'Excel'
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 309
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 317
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
      Left = 398
      Top = 10
      Width = 80
      Height = 25
      DataSource = srcStuffGroups
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 233
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
      TabOrder = 3
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
      Action = actSort
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
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    TabOrder = 2
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Width = 448
    Height = 423
    Align = alLeft
    TabOrder = 0
    ExplicitWidth = 448
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 444
      Height = 221
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 356
        Top = 8
        Width = 52
        Height = 13
        Caption = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        FocusControl = edtGroupID1
      end
      object Label2: TLabel
        Left = 356
        Top = 35
        Width = 67
        Height = 13
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        FocusControl = DBEdit2
      end
      object Label13: TLabel
        Left = 356
        Top = 68
        Width = 52
        Height = 13
        Caption = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        FocusControl = edtGroupID
      end
      object Label14: TLabel
        Left = 356
        Top = 95
        Width = 67
        Height = 13
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        FocusControl = DBEdit8
      end
      object Bevel1: TBevel
        Left = 11
        Top = 58
        Width = 427
        Height = 9
        Shape = bsTopLine
      end
      object Label15: TLabel
        Left = 117
        Top = 69
        Width = 63
        Height = 13
        Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        FocusControl = edtOrderPoint
      end
      object Label11: TLabel
        Left = 356
        Top = 123
        Width = 56
        Height = 13
        Caption = 'GroupName'
        FocusControl = edtGroupName_L2
      end
      object edtGroupID1: TDBEdit
        Left = 254
        Top = 4
        Width = 100
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'GroupID'
        DataSource = srcStuffGroups
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 11
        Top = 33
        Width = 343
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'GroupName'
        DataSource = srcStuffGroups
        ReadOnly = True
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 178
        Width = 426
        Height = 42
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1602#1575#1576#1604' '#1578#1593#1585#1610#1601
        TabOrder = 3
        object Label3: TLabel
          Left = 385
          Top = 20
          Width = 21
          Height = 13
          Caption = #1575#1586' '#1603#1583
          FocusControl = EdtStartCode
        end
        object Label4: TLabel
          Left = 154
          Top = 20
          Width = 20
          Height = 13
          Caption = #1578#1575' '#1603#1583
          FocusControl = EdtFinishCode
        end
        object EdtStartCode: TDBEdit
          Left = 257
          Top = 16
          Width = 100
          Height = 21
          DataField = 'StartCode'
          DataSource = srcStuffGroups_Detail
          TabOrder = 0
        end
        object EdtFinishCode: TDBEdit
          Left = 41
          Top = 16
          Width = 100
          Height = 21
          DataField = 'FinishCode'
          DataSource = srcStuffGroups_Detail
          TabOrder = 1
        end
      end
      object DBEdit8: TDBEdit
        Left = 11
        Top = 92
        Width = 343
        Height = 21
        DataField = 'GroupName'
        DataSource = srcStuffGroups_Detail
        TabOrder = 1
      end
      object edtGroupID: TDBEdit
        Left = 254
        Top = 63
        Width = 100
        Height = 21
        DataField = 'GroupID'
        DataSource = srcStuffGroups_Detail
        TabOrder = 0
      end
      object edtOrderPoint: TDBEdit
        Left = 11
        Top = 65
        Width = 100
        Height = 21
        Hint = #1583#1585' '#1711#1586#1575#1585#1588' '#1587#1601#1575#1585#1588#1610' '#1583#1585' '#1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605' '#1602#1575#1576#1604' '#1603#1606#1578#1585#1604' '#1575#1587#1578
        DataField = 'OrderPoint'
        DataSource = srcStuffGroups_Detail
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object DBCheckBox1: TDBCheckBox
        Left = 11
        Top = 148
        Width = 195
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = #1603#1575#1604#1575#1607#1575#1740' '#1575#1740#1606' '#1711#1585#1608#1607' '#1605#1593#1575#1601' '#1575#1586' '#1605#1575#1604#1610#1575#1578' '#1576#1575#1588#1606#1583
        DataField = 'VatExemptOn'
        DataSource = srcStuffGroups_Detail
        ParentBiDiMode = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtGroupName_L2: TDBEdit
        Left = 11
        Top = 119
        Width = 343
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'GroupName_L2'
        DataSource = srcStuffGroups_Detail
        ParentBiDiMode = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 223
      Width = 444
      Height = 199
      Align = alBottom
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      TabOrder = 1
      object Label5: TLabel
        Left = 317
        Top = 25
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1581#1587#1575#1576' '#1583#1585#1570#1605#1583
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 317
        Top = 55
        Width = 122
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1581#1587#1575#1576' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 317
        Top = 85
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        FocusControl = DBEdit7
      end
      object SpeedButton1: TSpeedButton
        Left = 213
        Top = 20
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 213
        Top = 50
        Width = 23
        Height = 23
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 213
        Top = 80
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBText1: TDBText
        Left = 8
        Top = 23
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__IncomeTopicCode'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 8
        Top = 53
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__BidTopicCode'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 8
        Top = 83
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__DetailCode'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 317
        Top = 115
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
        FocusControl = DBEdit9
      end
      object SpeedButton5: TSpeedButton
        Left = 213
        Top = 112
        Width = 23
        Height = 21
        Caption = '...'
        OnClick = SpeedButton5Click
      end
      object DBText5: TDBText
        Left = 8
        Top = 113
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__CTopicCode'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 8
        Top = 142
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__CTopicCode2'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object SpeedButton4: TSpeedButton
        Left = 213
        Top = 139
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton4Click
      end
      object Label8: TLabel
        Left = 317
        Top = 144
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
        FocusControl = DBEdit3
      end
      object Label10: TLabel
        Left = 317
        Top = 173
        Width = 115
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1581#1587#1575#1576' '#1583#1585' '#1570#1605#1583' '#1583#1585' '#1580#1585#1610#1575#1606
        FocusControl = DBEdit4
      end
      object SpeedButton6: TSpeedButton
        Left = 213
        Top = 168
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton6Click
      end
      object DBText6: TDBText
        Left = 8
        Top = 171
        Width = 199
        Height = 16
        Color = 13948116
        DataField = '__AFootInComingTopicCode'
        DataSource = srcStuffGroups_Detail
        ParentColor = False
        Transparent = True
      end
      object DBEdit5: TDBEdit
        Left = 241
        Top = 21
        Width = 70
        Height = 21
        DataField = 'acc_IncomeTopicCode'
        DataSource = srcStuffGroups_Detail
        TabOrder = 0
        OnKeyDown = DBEdit5KeyDown
      end
      object DBEdit6: TDBEdit
        Left = 241
        Top = 51
        Width = 70
        Height = 21
        DataField = 'acc_BidTopicCode'
        DataSource = srcStuffGroups_Detail
        TabOrder = 1
        OnKeyDown = DBEdit6KeyDown
      end
      object DBEdit7: TDBEdit
        Left = 241
        Top = 81
        Width = 70
        Height = 21
        DataField = 'acc_DetailCode'
        DataSource = srcStuffGroups_Detail
        TabOrder = 2
        OnKeyDown = DBEdit7KeyDown
      end
      object DBEdit9: TDBEdit
        Left = 241
        Top = 111
        Width = 70
        Height = 21
        DataField = 'acc_CTopicCode'
        DataSource = srcStuffGroups_Detail
        TabOrder = 3
        OnKeyDown = DBEdit9KeyDown
      end
      object DBEdit3: TDBEdit
        Left = 241
        Top = 140
        Width = 70
        Height = 21
        DataField = 'acc_CTopicCode2'
        DataSource = srcStuffGroups_Detail
        TabOrder = 4
        OnKeyDown = DBEdit3KeyDown
      end
      object DBEdit4: TDBEdit
        Left = 241
        Top = 169
        Width = 70
        Height = 21
        DataField = 'acc_AFootInComingTopicCode'
        DataSource = srcStuffGroups_Detail
        TabOrder = 5
        OnKeyDown = DBEdit4KeyDown
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 448
    Top = 53
    Width = 334
    Height = 423
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    ExplicitWidth = 342
    ExplicitHeight = 424
    object lbl2: TLabel
      Left = 1
      Top = 193
      Width = 69
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1711#1585#1608#1607' '#1601#1585#1593#1610' '#1705#1575#1604#1575
    end
    object lbl1: TLabel
      Left = 1
      Top = 23
      Width = 68
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1711#1585#1608#1607' '#1575#1589#1604#1610' '#1705#1575#1604#1575
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 340
      Height = 22
      Align = alTop
      TabOrder = 0
      object chkAllGroup: TCheckBox
        AlignWithMargins = True
        Left = 31
        Top = 4
        Width = 105
        Height = 14
        Margins.Left = 30
        Align = alLeft
        Alignment = taLeftJustify
        Caption = #1607#1605#1607' '#1711#1585#1608#1607#1607#1575
        TabOrder = 0
        OnClick = chkAllGroupClick
      end
    end
    object grdStuffGroups: TCedarDbgrid
      Left = 1
      Top = 36
      Width = 340
      Height = 157
      Align = alTop
      Color = clCream
      DataSource = srcStuffGroups
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
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
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupName'
          Footers = <>
          Width = 217
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StartCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FinishCode'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object CedarDbgrid1: TCedarDbgrid
      Left = 1
      Top = 206
      Width = 340
      Height = 217
      Align = alClient
      Color = clCream
      DataSource = srcStuffGroups_Detail
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
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
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 2
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupName'
          Footers = <>
          Width = 223
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StartCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FinishCode'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 56
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcStuffGroups_Detail
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcStuffGroups_Detail
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcStuffGroups_Detail
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcStuffGroups_Detail
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcStuffGroups_Detail
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606'Excel'
      OnExecute = actGetExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 488
  end
  object qryStuffGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStuffGroupsAfterScroll
    Parameters = <
      item
        Name = 'FormType1'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  DISTINCT   StuffGroups_1.*'
      
        'FROM'#9' (SELECT     StuffGroups.GroupType, MAX(StuffGroups.LevelID' +
        ') AS LevelID'
      #9#9' FROM         StuffCoding INNER JOIN'
      #9#9' StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID'
      #9#9' GROUP BY StuffGroups.GroupType'
      'having MAX(StuffGroups.LevelID) = :FormType1 '
      ') AS AccessLevel   RIGHT OUTER JOIN'
      
        #9#9'StuffGroups AS StuffGroups_1 ON AccessLevel.GroupType <> Stuff' +
        'Groups_1.GroupType '
      'where StuffGroups_1.LevelID = :FormType '
      '')
    Left = 544
    Top = 168
    object qryStuffGroupsGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qryStuffGroupsGroupName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupName'
      Required = True
      Size = 50
    end
    object qryStuffGroupsacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryStuffGroupsacc_CTopicCode2: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryStuffGroupsacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryStuffGroupsacc_IncomeTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576' '#1583#1585#1570#1605#1583
      FieldName = 'acc_IncomeTopicCode'
    end
    object qryStuffGroupsacc_BidTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'acc_BidTopicCode'
    end
    object qryStuffGroupsacc_AFootInComingTopicCode: TLargeintField
      FieldName = 'acc_AFootInComingTopicCode'
    end
    object qryStuffGroupsLevelID: TWordField
      FieldName = 'LevelID'
    end
    object qryStuffGroupsUperGroupId: TIntegerField
      FieldName = 'UperGroupId'
    end
    object qryStuffGroupsStartCode: TLargeintField
      Tag = 3
      DisplayLabel = #1575#1586' '#1603#1583
      FieldName = 'StartCode'
    end
    object qryStuffGroupsFinishCode: TLargeintField
      Tag = 3
      DisplayLabel = #1578#1575' '#1603#1583
      FieldName = 'FinishCode'
    end
    object qryStuffGroupsGroupType: TWordField
      FieldName = 'GroupType'
    end
    object qryStuffGroupsVatExemptOn: TWordField
      FieldName = 'VatExemptOn'
    end
  end
  object srcStuffGroups: TDataSource
    AutoEdit = False
    DataSet = qryStuffGroups
    Left = 655
    Top = 165
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStuffGroups_Detail
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 664
    Top = 311
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
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
    Left = 680
    Top = 383
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 23019
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 147388
        mmTop = 15081
        mmWidth = 17695
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1603#1575#1604#1575#1610' '#1602#1575#1576#1604' '#1578#1593#1585#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 89334
        mmTop = 15081
        mmWidth = 32470
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 15081
        mmWidth = 84402
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 0
        mmTop = 15081
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 186002
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1711#1585#1608#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 186002
        mmTop = 15081
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1586' '#1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 105834
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575' '#1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 84667
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1581#1587#1575#1576' '#1583#1585#1570#1605#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 63500
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583'.'#1605'.'#1602'. '#1578#1605#1575#1605' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 42333
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 21167
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 20373
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 42069
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 62706
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 83873
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 105040
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 20108
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 125942
        mmTop = 22754
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1323
        mmTop = 7408
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607#1575#1610' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 86784
        mmTop = 6350
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 1058
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 186002
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'GroupName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 127000
        mmTop = 0
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'StartCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 105834
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FinishCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 84667
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'acc_BidTopicCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 42333
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'acc_IncomeTopicCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 63500
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'acc_CTopicCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'acc_DetailCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 21167
        mmTop = 0
        mmWidth = 21000
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 165635
        mmTop = 1588
        mmWidth = 19304
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 148432
        mmTop = 1588
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 5027
        mmWidth = 54240
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
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
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 55
    Top = 400
    object N1: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1603#1583
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1593#1606#1608#1575#1606
      OnClick = N2Click
    end
  end
  object qryStuffGroups_Detail: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryStuffGroups_DetailAfterInsert
    BeforePost = qryStuffGroups_DetailBeforePost
    AfterPost = qryStuffGroups_DetailAfterPost
    AfterDelete = qryStuffGroupsAfterDelete
    Parameters = <
      item
        Name = 'UperGroupIdFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UperGroupIdTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM  StuffGroups'
      ''
      
        'WHERE        (UperGroupId BETWEEN :UperGroupIdFrom AND :UperGrou' +
        'pIdTo)'
      'AND ( LevelID = :FormType  )'
      'ORDER BY GroupID')
    Left = 528
    Top = 320
    object qryStuffGroups_DetailGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'GroupID'
    end
    object qryStuffGroups_DetailGroupName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupName'
      Required = True
      Size = 50
    end
    object qryStuffGroups_DetailGroupName_L2: TStringField
      Tag = 3
      DisplayLabel = 'Group Name'
      FieldName = 'GroupName_L2'
      Size = 50
    end
    object qryStuffGroups_DetailStartCode: TLargeintField
      Tag = 3
      DisplayLabel = #1575#1586' '#1603#1583
      FieldName = 'StartCode'
      Required = True
    end
    object qryStuffGroups_DetailFinishCode: TLargeintField
      Tag = 3
      DisplayLabel = #1578#1575' '#1603#1583
      FieldName = 'FinishCode'
      Required = True
    end
    object qryStuffGroups_Detail__IncomeTopicCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1583#1585#1570#1605#1583
      FieldKind = fkLookup
      FieldName = '__IncomeTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_IncomeTopicCode'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detail__BidTopicCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldKind = fkLookup
      FieldName = '__BidTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_BidTopicCode'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detailacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryStuffGroups_Detail__CTopicCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '__CTopicCode'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detailacc_CTopicCode2: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryStuffGroups_Detail__CTopicCode2: TStringField
      DisplayLabel = #1588#1585#1581' '#1705#1583' '#1578#1601#1589#1740#1604#1740'3'
      FieldKind = fkLookup
      FieldName = '__CTopicCode2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detailacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryStuffGroups_Detail__AFootInComingTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '__AFootInComingTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_AFootInComingTopicCode'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detail__DetailCode: TStringField
      FieldKind = fkLookup
      FieldName = '__DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      Size = 150
      Lookup = True
    end
    object qryStuffGroups_Detailacc_IncomeTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576' '#1583#1585#1570#1605#1583
      FieldName = 'acc_IncomeTopicCode'
    end
    object qryStuffGroups_Detailacc_BidTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'acc_BidTopicCode'
    end
    object qryStuffGroups_Detailacc_AFootInComingTopicCode: TLargeintField
      FieldName = 'acc_AFootInComingTopicCode'
    end
    object qryStuffGroups_DetailLevelID: TWordField
      FieldName = 'LevelID'
    end
    object qryStuffGroups_DetailUperGroupId: TIntegerField
      FieldName = 'UperGroupId'
    end
    object qryStuffGroups_Detailacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryStuffGroups_DetailOrderPoint: TFMTBCDField
      FieldName = 'OrderPoint'
      Precision = 20
      Size = 4
    end
    object qryStuffGroups_DetailGroupType: TWordField
      FieldName = 'GroupType'
    end
    object qryStuffGroups_DetailVatExemptOn: TWordField
      FieldName = 'VatExemptOn'
    end
  end
  object srcStuffGroups_Detail: TDataSource
    AutoEdit = False
    DataSet = qryStuffGroups_Detail
    OnStateChange = srcStuffGroups_DetailStateChange
    Left = 528
    Top = 384
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 200
    Top = 8
  end
end

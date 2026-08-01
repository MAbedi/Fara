inherited MakeDocumentF: TMakeDocumentF
  Left = 400
  Top = 193
  ActiveControl = cmbGroups
  Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1608' '#1575#1606#1576#1575#1585' '
  ClientHeight = 606
  ClientWidth = 1020
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 1028
  ExplicitHeight = 637
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 565
    Width = 1020
    ExplicitTop = 565
    ExplicitWidth = 1020
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 866
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowDoc
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1587#1606#1583
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 635
      Top = 7
      Width = 75
      Height = 27
      Hint = 'F8'
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actMakeDoc
      Align = alRight
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 943
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 558
      Top = 7
      Width = 75
      Height = 27
      Hint = 'F3'
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actCheckDocument
      Align = alRight
      Caption = #1670#1603' '#1603#1585#1583#1606' '#1587#1606#1583
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
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
      TabOrder = 7
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 8
    end
    object BitBtn7: TBitBtn
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
      TabOrder = 9
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 789
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 5
    end
    object btnSendWarnToExcel: TBitBtn
      AlignWithMargins = True
      Left = 712
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendWarnToExcel
      Align = alRight
      Caption = #8207#1582#1591#1575#1607#1575#1583#1585'Excel'#8207
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 461
      Top = 7
      Width = 94
      Height = 27
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Action = actMakeDocumentPostF
      Align = alRight
      Caption = #1579#1576#1578' '#1705#1604#1740' '#1575#1587#1606#1575#1583'...'
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Width = 1020
    OnClick = Panel2Click
    ExplicitWidth = 1020
    DesignSize = (
      1020
      53)
    inherited ImgTemplate: TImage
      Left = 1022
      Top = 3
      ExplicitLeft = 790
      ExplicitTop = 3
    end
    inherited lblCaption: TLabel
      Left = 912
      ExplicitLeft = 912
    end
    inherited lblBaseDate: TLabel
      Left = 436
      ExplicitLeft = 387
    end
    object PnlSerial: TPanel
      Left = 1
      Top = 1
      Width = 207
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object SBtnReciptNumber: TSpeedButton
        Left = 8
        Top = 2
        Width = 24
        Height = 22
        Caption = '...'
        OnClick = SBtnReciptNumberClick
      end
      object Label11: TLabel
        Left = 121
        Top = 7
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = #1587#1585#1610#1575#1604' '#1587#1606#1583
      end
      object MskSerial: TMaskEdit
        Left = 34
        Top = 3
        Width = 76
        Height = 21
        EditMask = '999999999;1;_'
        MaxLength = 9
        TabOrder = 0
        Text = '         '
        OnExit = MskSerialExit
      end
      object cmbYearID: TComboBox
        Left = 8
        Top = 27
        Width = 102
        Height = 21
        TabOrder = 1
        Text = 'cmbYearID'
        OnChange = cmbYearIDChange
      end
    end
  end
  inherited Panel3: TPanel
    Width = 1020
    Height = 512
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitWidth = 1020
    ExplicitHeight = 512
    object Splitter1: TSplitter
      Left = 763
      Top = 141
      Width = 5
      Height = 371
      Align = alRight
      ExplicitLeft = 658
      ExplicitTop = 111
      ExplicitHeight = 310
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1020
      Height = 92
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        1020
        92)
      object Label1: TLabel
        Left = 951
        Top = 9
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        ExplicitLeft = 710
      end
      object Label2: TLabel
        Left = 951
        Top = 37
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
        ExplicitLeft = 710
      end
      object Label4: TLabel
        Left = 537
        Top = 37
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1587#1606#1583
      end
      object Label5: TLabel
        Left = 537
        Top = 9
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1608#1593' '#1587#1606#1583
      end
      object Label8: TLabel
        Left = 323
        Top = 9
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1588#1585#1603#1578
      end
      object MskDocNo: TMaskEdit
        Left = 878
        Top = 5
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '999999999;1;_'
        MaxLength = 9
        TabOrder = 2
        Text = '         '
      end
      object mskDocDate: TMaskEdit
        Left = 876
        Top = 33
        Width = 74
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '    /  /  '
      end
      object MskDocTopic: TMaskEdit
        Left = 24
        Top = 33
        Width = 512
        Height = 21
        TabOrder = 3
        Text = ' '#1587#1606#1583' '#1582#1585#1610#1583' '#1608#1601#1585#1608#1588' '#1608#1575#1606#1576#1575#1585
      end
      object CmbDocType: TComboBox
        Left = 375
        Top = 5
        Width = 161
        Height = 21
        Style = csDropDownList
        Color = clWhite
        TabOrder = 1
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object cmbCompany: TComboBox
        Left = 24
        Top = 5
        Width = 297
        Height = 21
        Style = csDropDownList
        Color = clWhite
        TabOrder = 0
        OnChange = cmbGroupsChange
      end
      object Panel5: TPanel
        Left = 0
        Top = 56
        Width = 1020
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
        object rgDocDate: TRadioGroup
          Left = 596
          Top = 0
          Width = 424
          Height = 36
          Align = alRight
          Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1578#1575#1585#1610#1582' '#1585#1608#1586
            #1578#1575#1585#1610#1582' '#1605#1581#1583#1608#1583#1607
            #1578#1575#1585#1740#1582' '#1601#1585#1605' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607)
          TabOrder = 0
          OnClick = rgDocDateClick
        end
        object chkTajmia: TCheckBox
          Left = 0
          Top = 0
          Width = 83
          Height = 36
          Align = alLeft
          Caption = #1579#1576#1578' '#1578#1580#1605#1610#1593#1610
          TabOrder = 1
          OnClick = chkTajmiaClick
        end
        object rgComment: TRadioGroup
          Left = 347
          Top = 0
          Width = 249
          Height = 36
          Align = alRight
          Caption = #1579#1576#1578' '#1588#1585#1581' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #1579#1576#1578' '#1588#1585#1581' 1'
            #1579#1576#1578' '#1588#1585#1581' 2')
          TabOrder = 2
          OnClick = rgCommentClick
        end
      end
    end
    object Panel4: TPanel
      Left = 768
      Top = 141
      Width = 252
      Height = 371
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object RdGKindDoc: TRadioGroup
        Left = 0
        Top = 0
        Width = 252
        Height = 300
        Align = alTop
        Caption = ' '#1606#1581#1608#1607' '#1579#1576#1578' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
        ItemIndex = 0
        Items.Strings = (
          '1-&'#1579#1576#1578'  '#1576#1578#1601#1603#1610#1603' '#1578#1575#1585#1610#1582
          '2-&'#1579#1576#1578'  '#1576#1578#1601#1603#1610#1603' '#1588#1605#1575#1585#1607' '#1601#1585#1605
          '3-&'#1579#1576#1578' '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578
          '4-'#1579#1576#1578' '#1576#1578#1601#1603#1610#1603' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608' '#1605#1602#1583#1575#1585
          '5-'#1576#1578#1601#1603#1610#1603' '#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588#1585#1581' '#1603#1575#1604#1575
          '6-'#1588' '#1601#1585#1605' '#1608#1603#1575#1604#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1575#1580#1586#1575#1569
          '7-'#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1575#1580#1586#1575#1569
          '8-&'#1579#1576#1578'  '#1576#1578#1601#1603#1610#1603' '#1578#1575#1585#1610#1582' '#1608' '#1601#1585#1605
          '9-'#1588#8207#1601#1585#1605' - '#1605#1602#1583#1575#1585' - '#1588#1585#1581' '#1603#1575#1604#1575' - '#1585#1575#1607#1606#1605#1575
          '10-'#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1601#1585#1605
          '11-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1608#1586#1606'-'#1588#1585#1581' '#1603#1575#1604#1575
          '12-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588'.'#1603#1575#1604#1575'('#1580'.'#1576#1587#1578#1575#1606#1603#1575#1585')'#8207
          '13-'#1605#1588#1582#1589#1575#1578' '#1585#1575#1606#1606#1583#1607' '#1583#1585' '#1601#1585#1605
          '14-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588'.'#1603#1575#1604#1575'('#1580'.'#1576#1583#1607#1603#1575#1585')'#8207
          '15-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'('#1580'.'#1576#1587#1578#1575#1606#1603#1575#1585')'#8207
          '16-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588'.'#1603#1575#1604#1575
          '17-'#1576#1578#1601#1603#1610#1603' '#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588#1585#1581' '#1603#1575#1604#1575#1575#1606#1576#1575#1585#1605#1588#1578#1585#1740
          '18- '#1579#1576#1578' '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1582#1575#1589
          '10-19-'#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1608' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1601#1585#1605
          '20-'#1588#8207#1601#1585#1605'-'#1605#1602#1583#1575#1585'-'#1588'.'#1603#1575#1604#1575' '#1578#1580#1605#1740#1593' '#1576#1583#1607#1705#1575#1585'/'#1576#1587#1578#1575#1606#1705#1575#1585)
        TabOrder = 0
        OnClick = RdGKindDocClick
      end
      object lslWarnings: TListBox
        Left = 0
        Top = 300
        Width = 252
        Height = 71
        Align = alClient
        Color = 16744576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        OnClick = lslWarningsClick
      end
    end
    object pnlLblLimitPlace: TPanel
      Left = 0
      Top = 92
      Width = 1020
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object LblShowLimitPlace2: TLabel
        Left = 0
        Top = 0
        Width = 3
        Height = 13
        Align = alLeft
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
      end
      object LblShowLimitPlace1: TLabel
        Left = 1017
        Top = 0
        Width = 3
        Height = 13
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object grp1: TGroupBox
      Left = 0
      Top = 109
      Width = 1020
      Height = 32
      Align = alTop
      Caption = ' '#1606#1575#1605' '#1601#1585#1605' '
      TabOrder = 3
      DesignSize = (
        1020
        32)
      object btnSelect: TSpeedButton
        Left = 347
        Top = 7
        Width = 23
        Height = 22
        Caption = #8207
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00636B
          7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
          EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
          FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
          FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
          FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
          9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
          D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
          D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00EFDE
          A500B55A1800FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00EFC68400EFC6
          8400B55A1800E7D6C600E7D6C600FFFFDE00FFFFDE00C6949400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00B55A1800B55A
          1800B55A1800B55A1800B55A1800FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
          C600B55A1800FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
          A500B55A1800FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
          9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
          B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
          8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btnSelectClick
      end
      object cmbGroups: TComboBox
        Left = 375
        Top = 8
        Width = 587
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DropDownCount = 16
        TabOrder = 0
        OnChange = cmbGroupsChange
        OnEnter = cmbGroupsEnter
      end
    end
    object TabControl1: TTabControl
      Left = 0
      Top = 141
      Width = 763
      Height = 371
      Align = alClient
      TabOrder = 4
      Tabs.Strings = (
        '...'
        #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578'/'#1608#1575#1587#1591' '#1601#1585#1608#1588' ')
      TabIndex = 0
      OnChange = TabControl1Change
      object Splitter2: TSplitter
        AlignWithMargins = True
        Left = 7
        Top = 236
        Width = 749
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
        ExplicitLeft = 4
        ExplicitTop = 216
        ExplicitWidth = 570
      end
      inline frmMakeDocs1: TfrmMakeDocs
        Left = 4
        Top = 244
        Width = 755
        Height = 123
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 4
        ExplicitTop = 244
        ExplicitWidth = 755
        ExplicitHeight = 123
        inherited DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 749
          Height = 96
          ParentBiDiMode = True
          Columns = <
            item
              Expanded = False
              FieldName = 'DocRow'
              Width = 27
              Visible = True
            end
            item
              Color = 13236955
              Expanded = False
              FieldName = 'DocCaption'
              Width = 239
              Visible = True
            end
            item
              Alignment = taRightJustify
              Color = 13431799
              Expanded = False
              FieldName = 'DocName'
              Width = 220
              Visible = True
            end>
        end
        inherited edtDocName: TDBEdit
          Top = 102
          Width = 755
          ExplicitTop = 102
          ExplicitWidth = 755
        end
        inherited srcMakeDocs: TDataSource
          OnStateChange = frmMakeDocs1srcMakeDocsStateChange
          Left = 169
          Top = 46
        end
        inherited qryMakeDocs: TADOQuery
          Left = 296
          Top = 48
        end
      end
      object Panel6: TPanel
        Left = 4
        Top = 161
        Width = 755
        Height = 72
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        OnClick = Panel6Click
        DesignSize = (
          755
          72)
        object DBText3: TDBText
          Left = 518
          Top = 37
          Width = 169
          Height = 16
          Anchors = [akTop, akRight]
          Color = clCream
          DataField = '_CTopicCode'
          DataSource = srcItems
          ParentColor = False
          Transparent = True
          ExplicitLeft = 443
        end
        object DBText1: TDBText
          Left = 518
          Top = 3
          Width = 169
          Height = 16
          Anchors = [akTop, akRight]
          Color = clCream
          DataField = '_TopicName'
          DataSource = srcItems
          ParentColor = False
          Transparent = True
          ExplicitLeft = 443
        end
        object DBText2: TDBText
          Left = 518
          Top = 20
          Width = 169
          Height = 16
          Anchors = [akTop, akRight]
          Color = clCream
          DataField = '_DetailCode'
          DataSource = srcItems
          ParentColor = False
          Transparent = True
          ExplicitLeft = 443
        end
        object Label3: TLabel
          Left = 690
          Top = 5
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1581#1587#1575#1576
          ExplicitLeft = 702
        end
        object Label6: TLabel
          Left = 690
          Top = 22
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1601#1589#1610#1604#1610
          ExplicitLeft = 615
        end
        object Label7: TLabel
          Left = 690
          Top = 39
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1601#1589#1740#1604#1740'2'
          ExplicitLeft = 702
        end
        object Lbl_CTopicCode2: TLabel
          Left = 690
          Top = 56
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1601#1589#1740#1604#1740'3'
          ExplicitLeft = 702
        end
        object DBTxt_CTopicCode2: TDBText
          Left = 519
          Top = 54
          Width = 169
          Height = 16
          Anchors = [akTop, akRight]
          Color = clCream
          DataField = '_CTopicCode2'
          DataSource = srcItems
          ParentColor = False
          Transparent = True
          ExplicitLeft = 444
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 329
          Height = 72
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object StatusBar1: TStatusBar
            Left = 0
            Top = 0
            Width = 329
            Height = 26
            Align = alTop
            BiDiMode = bdRightToLeft
            BorderWidth = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Panels = <
              item
                Bevel = pbRaised
                Width = 145
              end
              item
                Bevel = pbRaised
                Width = 145
              end
              item
                Bevel = pbRaised
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                Text = #1580#1605#1593
                Width = 100
              end>
            ParentBiDiMode = False
            UseSystemFont = False
          end
          object StatusBar3: TStatusBar
            Left = 0
            Top = 46
            Width = 329
            Height = 26
            BiDiMode = bdRightToLeft
            BorderWidth = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Panels = <
              item
                Bevel = pbRaised
                Width = 290
              end
              item
                Bevel = pbRaised
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                Text = #1578#1601#1575#1608#1578
                Width = 50
              end>
            ParentBiDiMode = False
            UseSystemFont = False
          end
          object StatusBar2: TStatusBar
            Left = 0
            Top = 26
            Width = 329
            Height = 20
            Align = alClient
            BiDiMode = bdRightToLeft
            BorderWidth = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Panels = <
              item
                Bevel = pbRaised
                Width = 290
              end
              item
                Bevel = pbRaised
                BiDiMode = bdLeftToRight
                ParentBiDiMode = False
                Text = #1578#1593#1583#1575#1583
                Width = 50
              end>
            ParentBiDiMode = False
            UseSystemFont = False
          end
        end
      end
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 4
        Top = 24
        Width = 755
        Height = 137
        Align = alClient
        Color = clCream
        DataSource = srcItems
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
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        EmptyDataInfo.Active = True
        EmptyDataInfo.Text = #1583#1585' '#1581#1575#1604' '#1583#1585#1740#1575#1601#1578
        OddRowColor = clWhite
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
        PopupMenu = PopupMenuDBGrid1
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = actShowFormExecute
        OnEditButtonClick = actAccountfExecute
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'CTopicCode3'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'CTopicCode2'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'CTopicCode'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'DetailCode'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'TopicCode'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Comment'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PO'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'ArzAmount'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 14024703
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Debt'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 14155735
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Credit'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CurrencyRate'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CurrencyDebit'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CurrencyCredit'
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 264
    Top = 7
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcItems
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcItems
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcItems
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcItems
    end
    object actMakeDoc: TAction
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      Enabled = False
      Hint = ' '
      ShortCut = 119
      OnExecute = actMakeDocExecute
    end
    object actShowDoc: TAction
      Caption = #1606#1605#1575#1610#1588' '#1587#1606#1583
      OnExecute = actShowDocExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actErrorList: TAction
      Caption = #1604#1610#1587#1578' '#1582#1591#1575#1607#1575
      OnExecute = actErrorListExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actCheckDocument: TAction
      Caption = #1670#1603' '#1603#1585#1583#1606' '#1587#1606#1583
      ShortCut = 114
      OnExecute = actCheckDocumentExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actAddCode: TAction
      Caption = 'actAddCode'
    end
    object actSendWarnToExcel: TAction
      Caption = #8207#1582#1591#1575#1607#1575#1583#1585'Excel'#8207
      OnExecute = actSendWarnToExcelExecute
    end
    object actDatasetToXML: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607#8207'XML'
      OnExecute = actDatasetToXMLExecute
    end
    object actDocPostKind1: TAction
      Caption = #1579#1575#1576#1578' '#1603#1585#1583#1606' '#1578#1606#1592#1610#1605#1575#1578
      OnExecute = actDocPostKind1Execute
    end
    object actDocPostKind_1: TAction
      Caption = #1606#1605#1575#1610#1588' '#1606#1581#1608#1607' '#1579#1576#1578' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actDocPostKind_1Execute
    end
    object actShowFr: TAction
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605#1608#1604
      OnExecute = actShowFrExecute
    end
    object actAddComment2: TAction
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1593#1606#1575#1608#1740#1606' '#1581#1587#1575#1576' '#1583#1585' '#1588#1585#1581' '#1587#1606#1583
      OnExecute = actAddComment2Execute
    end
    object actMakeDocumentPostF: TAction
      Caption = #1579#1576#1578' '#1705#1604#1740' '#1575#1587#1606#1575#1583'...'
      Enabled = False
      OnExecute = actMakeDocumentPostFExecute
    end
    object actSendToXml: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' XML '#1576#1575' '#1575#1604#1711#1608'...'
      OnExecute = actSendToXmlExecute
    end
    object actAccountf: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610'...'
      OnExecute = actAccountfExecute
    end
    object actAddCommentArz: TAction
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1593#1606#1575#1608#1740#1606' '#1575#1585#1586#1740' '#1581#1587#1575#1576' '#1583#1585' '#1588#1585#1581' '#1587#1606#1583
      OnExecute = actAddCommentArzExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 360
    Top = 6
  end
  object qryDocuments: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from acc.Documents'
      'where 0=1')
    Left = 334
    Top = 290
  end
  object qryItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryItemsAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'NumberFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'NumberTo'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 10
        Value = '1402/01/01'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 10
        Value = '1402/12/29'
      end
      item
        Name = 'AidDateFrom'
        DataType = ftWideString
        Size = 10
        Value = '1402/01/01'
      end
      item
        Name = 'AidDateTo'
        DataType = ftWideString
        Size = 10
        Value = '1402/12/29'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        DataType = ftInteger
        Size = -1
        Value = 999
      end
      item
        Name = 'SecondTpFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'SecondTpTo'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'CustomerGrpIDFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CustomerGrpIDTo'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'ReciptStateFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'ReciptStateTo'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'CustID1Form'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CustID1To'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'CustID2Form'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CustID2To'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'CustID3Form'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'CustID3To'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'ReciptsRowFrom'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'ReciptsRowTo'
        DataType = ftInteger
        Size = -1
        Value = 999999999
      end
      item
        Name = 'ReciptTypeFrom'
        DataType = ftWideString
        Size = 5
        Value = '-1000'
      end
      item
        Name = 'ReciptTypeTo'
        DataType = ftWideString
        Size = 5
        Value = '-1000'
      end
      item
        Name = 'NotReciptNumber'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'NotCustID1'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'addIDFilter'
        DataType = ftWideString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      
        'SELECT      MAX(IDs) as IDs ,ArzTypeID, ReciptID,ServerID,YearID' +
        ','
      
        'Aid_MakeDocuments_Recipt.TopiCcode ,Aid_MakeDocuments_Recipt.Det' +
        'ailCode ,CTopicCode,CTopicCode2,CTopicCode3,'
      
        #39' '#1576#1575#1576#1578' '#39' + ReciptCaption + '#39' '#1576#1578#1575#1585#1610#1582' '#39' + ReciptDate + '#39' '#1591#1610' '#1601#1585#1605' '#1588#1605 +
        #1575#1585#1607' '#39' + ltrim(str(ReciptNumber)) AS Comment'
      
        ',SUM(entity) as Entity ,Max(PO) as PO , case when SUM(bed)>0 the' +
        'n SUM(bed) else 0 end+case when SUM(bes)<0 then -SUM(bes) else 0' +
        ' end AS Debt, case when SUM(bes)>0 then SUM(bes) else 0 end+case' +
        ' when SUM(bed)<0 then -SUM(bed) else 0 end AS Credit,  AidNumber' +
        ' , ReciptNumber,ReciptDate ,CustName,CustName2,CustName3,sum(Arz' +
        'Amount) AS ArzAmountC ,sum(CurrencyDiscounts) AS CurrencyDiscoun' +
        'ts , MachineInfo ,ArzName,SellsEmporiumName, RialsEqual,Fitful.F' +
        'itfulID AS ArzAmount , Fitful.Comment2, Fitful.FitfulNote AS _De' +
        'c, TruckNumber,Max(IAidNumber) AS IAidNumber,Max(IAidDate)  IAid' +
        'Date'
      
        ',sum(Currencydebit)Currencydebit,sum(Currencycredit)Currencycred' +
        'it,MAX(CurrencyRate) AS CurrencyRate '
      
        'FROM            dbo.Aid_MakeDocuments_Recipt(0 ,:NumberFrom, :Nu' +
        'mberTo, :DateFrom, :DateTo, :AidDateFrom , :AidDateTo, :StoreIDF' +
        'rom, :StoreIDTo, 0, :SecondTpFrom, :SecondTpTo, :CustomerGrpIDFr' +
        'om, :CustomerGrpIDTo,'
      
        '                         :ReciptStateFrom, :ReciptStateTo, :Cust' +
        'ID1Form, :CustID1To, :CustID2Form, :CustID2To, :CustID3Form, :Cu' +
        'stID3To, :SellsEmporiumFrom, :SellsEmporiumTo'
      
        '                         , 2, :ReciptsRowFrom, :ReciptsRowTo ,:R' +
        'eciptTypeFrom , :ReciptTypeTo  ,:NotReciptNumber ,:NotCustID1 ,:' +
        'addIDFilter ) AS Aid_MakeDocuments_Recipt '
      
        'CROSS JOIN Fitful  WHERE  (bed+bes)<>0 and     (ReciptType IN ( ' +
        '5 )) '
      
        ' group By  bedbes ,Fitful.Comment2, Fitful.FitfulNote,Fitful.Fit' +
        'fulID,ArzTypeID,ReciptID, ServerID, YearID,reciptCaption , AidNu' +
        'mber , reciptNumber,ReciptDate,CustName,CustName2,CustName3,Aid_' +
        'MakeDocuments_Recipt.TopiCcode ,Aid_MakeDocuments_Recipt.DetailC' +
        'ode , CtopicCode, CTopicCode2, CTopicCode3, TruckNumber, Machine' +
        'Info ,ArzName,SellsEmporiumName, RialsEqual  , Kind ,RECIPTCAPTI' +
        'ON,RECIPTDATE,LTRIM((RECIPTNUMBER))'
      ' HAVING SUM(bed)+ SUM(bes)<>0'
      
        ' Order By  ReciptID, ServerID, YearID,reciptCaption ,reciptNumbe' +
        'r,ReciptDate, case when sum(bed - bes ) > 0 then 1 else 2 end , ' +
        'kind ,Aid_MakeDocuments_Recipt.TopiCcode ,Aid_MakeDocuments_Reci' +
        'pt.DetailCode , CtopicCode, CTopicCode2, CTopicCode3 '
      '')
    Left = 492
    Top = 294
    object qryItemsIDs: TMemoField
      FieldName = 'IDs'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qryItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryItemsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryItems_TopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCode'
      Size = 150
      Lookup = True
    end
    object qryItemsDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qryItems_DetailCode: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCode'
      Size = 150
      Lookup = True
    end
    object qryItemsCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1740#1604#1740'2'
      FieldName = 'CTopicCode'
    end
    object qryItems_CTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicCode'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCode'
      Size = 150
      Lookup = True
    end
    object qryItemsCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1740#1604#1740'3'
      FieldName = 'CTopicCode2'
    end
    object qryItemsCTopicCode3: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1740#1604#1740'4'
      FieldName = 'CTopicCode3'
    end
    object qryItemsDebt: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1583#1607#1603#1575#1585
      FieldName = 'Debt'
      ReadOnly = True
      Required = True
      currency = True
      Precision = 19
    end
    object qryItemsCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'Credit'
      ReadOnly = True
      Required = True
      currency = True
      Precision = 19
    end
    object qryItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryItemsEntity: TFMTBCDField
      FieldName = 'Entity'
      Precision = 38
    end
    object qryItemsWeight: TFMTBCDField
      FieldName = 'Weight'
      Precision = 38
    end
    object qryItemsComment: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'Comment'
      Size = 300
    end
    object qryItemsComment2: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'Comment2'
      Size = 300
    end
    object qryItems_CTopicCode2: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicCode2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'CTopicCode2'
      Size = 150
      Lookup = True
    end
    object qryItemsReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryItemsReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryItems_CompanyCode: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CompanyCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'CompanyCode'
      KeyFields = 'DetailCode'
      Lookup = True
    end
    object qryItemsArzAmountC: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmountC'
    end
    object qryItemsCurrencyDiscounts: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1582#1601#1740#1601' '#1575#1585#1586
      FieldName = 'CurrencyDiscounts'
      Precision = 20
      Size = 3
    end
    object qryItemsArzAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmount'
    end
    object qryItemsTruckNumber: TStringField
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryItemsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryItems_TopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicName2'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L2'
      KeyFields = 'TopicCode'
      Size = 250
      Lookup = True
    end
    object qryItems_DetailName2: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName2'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName2'
      KeyFields = 'DetailCode'
      Size = 250
      Lookup = True
    end
    object qryItems_CTopicName_L2: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName_L2'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L2'
      KeyFields = 'CTopicCode'
      Size = 30
      Lookup = True
    end
    object qryItemsPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object qryItemsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryItemsRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      Precision = 19
    end
    object qryItemsSellsEmporiumName: TWideStringField
      Tag = 3
      DisplayLabel = #1605#1585#1705#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporiumName'
      Size = 100
    end
    object qryItemsMachineInfo: TStringField
      FieldName = 'MachineInfo'
      Size = 150
    end
    object qryItemsArzName: TStringField
      FieldName = 'ArzName'
      Size = 50
    end
    object qryItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' '
      FieldName = 'CustName'
      Size = 160
    end
    object qryItemsCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustName2'
      Size = 160
    end
    object qryItemsCustName3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' 3'
      FieldName = 'CustName3'
      Size = 160
    end
    object qryItemsIAidDate: TStringField
      FieldName = 'IAidDate'
      FixedChar = True
      Size = 10
    end
    object qryItemsIAidNumber: TStringField
      FieldName = 'IAidNumber'
      Size = 40
    end
    object qryItemsCurrencyDebit: TFMTBCDField
      DisplayLabel = #1575#1585#1586' '#1576#1583#1607#1705#1575#1585
      FieldName = 'CurrencyDebit'
      DisplayFormat = '#,##0.00;(#,##0.00)'
      currency = True
      Precision = 24
      Size = 3
    end
    object qryItemsCurrencyCredit: TFMTBCDField
      DisplayLabel = #1575#1585#1586' '#1576#1587#1578#1575#1606#1705#1575#1585
      FieldName = 'CurrencyCredit'
      DisplayFormat = '#,##0.00;(#,##0.00)'
      currency = True
      Precision = 24
      Size = 3
    end
    object qryItemsCurrencyRate: TFMTBCDField
      DisplayLabel = #1606#1585#1582' '#1575#1585#1586
      FieldName = 'CurrencyRate'
      Precision = 24
      Size = 3
    end
  end
  object qryInitcmb: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    Left = 594
    Top = 286
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 417
    Top = 286
  end
  object qryDocGroups: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *'
      'FROM acc.DocGroups'
      'where 0=1')
    Left = 48
    Top = 287
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    BalloonIcon = bError
    TimeOut = 4000
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 563
    Top = 16
  end
  object PopupMenuDBGrid1: TPopupMenu
    AutoHotkeys = maManual
    Left = 188
    Top = 286
    object mnu_All_Click_: TMenuItem
      Tag = 1
      Caption = #1575#1585#1578#1576#1575#1591' '#1578#1601#1589#1610#1604#1610' '#1576#1575' '#1581#1587#1575#1576' '
      OnClick = mnu_All_Click_Click
    end
    object N2: TMenuItem
      Tag = 2
      Caption = #1575#1585#1578#1576#1575#1591' '#1578#1601#1589#1610#1604#1610'2'#39' '#1576#1575' '#1581#1587#1575#1576' '
      OnClick = mnu_All_Click_Click
    end
    object N3: TMenuItem
      Tag = 3
      Caption = #1575#1585#1578#1576#1575#1591' '#1578#1601#1589#1610#1604#1610'2'#39'2 '#1576#1575' '#1578#1601#1589#1610#1604#1610'2'
      OnClick = mnu_All_Click_Click
    end
  end
  object CheckDoc1: TCheckDoc
    Connection = DmF.adcAccounting
    QuerySource = qryItems
    ListWarninig = lslWarnings
    FNTopicCode = 'TopicCode'
    FNTopicCaption = '_TopicName'
    FNDetailCode = 'DetailCode'
    FNCtopicCode = 'CTopicCode'
    FNCtopicCode2 = 'CTopicCode2'
    FNDebt = 'Debt'
    FNCredit = 'Credit'
    YearId = 0
    Left = 194
    Top = 7
  end
  object zAPIBalloon1: TzAPIBalloon
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 248
    Top = 136
  end
  object qryReciptsDoc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        Recipt_ID, Serial, CompanyCode, SecondaryDocNo, Pr' +
        'imaryDocNo, DocDate'
      'FROM            ReciptsDoc'
      'WHERE        (Recipt_ID = 0)')
    Left = 144
    Top = 117
    object qryReciptsDocRecipt_ID: TLargeintField
      FieldName = 'Recipt_ID'
    end
    object qryReciptsDocSerial: TIntegerField
      FieldName = 'Serial'
    end
    object qryReciptsDocCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qryReciptsDocSecondaryDocNo: TIntegerField
      FieldName = 'SecondaryDocNo'
    end
    object qryReciptsDocPrimaryDocNo: TIntegerField
      FieldName = 'PrimaryDocNo'
    end
    object qryReciptsDocDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
  end
end

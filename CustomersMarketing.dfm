inherited CustomersMarketingF: TCustomersMarketingF
  Left = 355
  Top = 225
  ActiveControl = cmbGroups
  Caption = #1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606' '#1581#1602#1740#1602#1740'/'#1581#1602#1608#1602#1740
  ClientHeight = 577
  ClientWidth = 922
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 930
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 536
    Width = 922
    ExplicitTop = 536
    ExplicitWidth = 922
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 3
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 536
      Top = 1
      Width = 385
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 540
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 309
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
        Left = 232
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
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 155
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
        TabOrder = 2
      end
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actGetExel
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
      end
      object BitBtn15: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Align = alRight
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
        TabOrder = 4
        OnClick = BitBtn15Click
      end
    end
    object okPanel: TPanel
      Left = 371
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Hint = ' '
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 4
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
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
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
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 922
    ExplicitWidth = 926
    inherited ImgTemplate: TImage
      Left = 897
      Top = 7
      ExplicitLeft = 761
      ExplicitTop = 7
    end
    inherited lblCaption: TLabel
      Left = 818
      Height = 16
      ExplicitLeft = 818
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 4
      Top = 32
      Width = 62
      Height = 17
      Alignment = taLeftJustify
      Caption = #1594#1610#1585' '#1601#1593#1575#1604
      DataField = 'CustomerActive'
      DataSource = srcCustomers
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited Panel3: TPanel
    Width = 922
    Height = 483
    ExplicitWidth = 926
    ExplicitHeight = 484
    object Panel1: TPanel
      Left = 610
      Top = 2
      Width = 310
      Height = 479
      Align = alRight
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      object dbgrdCustomers: TDBGrid
        Left = 6
        Top = 80
        Width = 294
        Height = 389
        Align = alClient
        Color = clCream
        DataSource = srcCustomers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = sd
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = actCustomersInterViewExecute
        OnKeyPress = dbgrdCustomersKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CustID'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustFirstName'
            Width = 50
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 6
        Width = 294
        Height = 74
        Align = alTop
        Caption = '  '#1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1581#1602#1740#1602#1740'/'#1581#1602#1608#1602#1740'  '
        TabOrder = 1
        object cmbGroups: TComboBox
          AlignWithMargins = True
          Left = 5
          Top = 48
          Width = 284
          Height = 21
          Align = alBottom
          AutoDropDown = True
          Style = csDropDownList
          Color = 14024703
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
        object Panel10: TPanel
          Left = 2
          Top = 15
          Width = 290
          Height = 30
          Align = alTop
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 23
            Height = 22
            Align = alLeft
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 3
            ExplicitTop = 1
          end
          object btnSelect: TSpeedButton
            AlignWithMargins = True
            Left = 33
            Top = 4
            Width = 23
            Height = 22
            Align = alLeft
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
            ExplicitLeft = 80
            ExplicitTop = 0
          end
          object chkAllCusts: TCheckBox
            Left = 128
            Top = 1
            Width = 161
            Height = 28
            Align = alRight
            Alignment = taLeftJustify
            BiDiMode = bdRightToLeft
            Caption = '&'#1607#1605#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1581#1602#1740#1602#1740'/'#1581#1602#1608#1602#1740
            ParentBiDiMode = False
            TabOrder = 0
            OnClick = chkAllCustsClick
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 608
      Height = 479
      Align = alClient
      BevelInner = bvRaised
      BorderWidth = 3
      FullRepaint = False
      TabOrder = 1
      ExplicitWidth = 612
      ExplicitHeight = 480
      object PageControl1: TPageControl
        Left = 5
        Top = 5
        Width = 598
        Height = 469
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        ExplicitWidth = 602
        ExplicitHeight = 470
        object TabSheet3: TTabSheet
          Caption = #1575#1589#1604#1740
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pnl1: TPanel
            Left = 0
            Top = 0
            Width = 590
            Height = 441
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 594
            ExplicitHeight = 442
            DesignSize = (
              590
              441)
            object Label2: TLabel
              Left = 489
              Top = 10
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1605#1588#1578#1585#1610
              FocusControl = edtCustID
              ExplicitLeft = 497
            end
            object Label3: TLabel
              Left = 489
              Top = 36
              Width = 93
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1585#1603#1578'/'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
              FocusControl = edtCustName
              ExplicitLeft = 497
            end
            object Label37: TLabel
              Left = 489
              Top = 88
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
              ExplicitLeft = 497
            end
            object Label4: TLabel
              Left = 223
              Top = 114
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = 'Email'
              FocusControl = edtemail
              ExplicitLeft = 231
            end
            object Label41: TLabel
              Left = 223
              Top = 88
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606'3'
              ExplicitLeft = 231
            end
            object Label44: TLabel
              Left = 223
              Top = 62
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606'2'
              ExplicitLeft = 231
            end
            object Label54: TLabel
              Left = 223
              Top = 10
              Width = 49
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1588#1582#1589
              ExplicitLeft = 231
            end
            object Label55: TLabel
              Left = 223
              Top = 36
              Width = 13
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1575#1605
              FocusControl = edtCustFirstName
              ExplicitLeft = 231
            end
            object Label58: TLabel
              Left = 493
              Top = 348
              Width = 37
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1580#1606#1587#1610#1578
              ExplicitLeft = 501
            end
            object Label6: TLabel
              Left = 489
              Top = 62
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1604#1601#1606
              ExplicitLeft = 497
            end
            object Label7: TLabel
              Left = 488
              Top = 114
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1601#1575#1603#1587
              FocusControl = edtTel
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 496
            end
            object Label59: TLabel
              Left = 759
              Top = 17
              Width = 72
              Height = 13
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1588#1605#1575#1585#1607#8207#1605#1587#1578#1582#1583#1605
              ParentBiDiMode = False
              ExplicitLeft = 656
            end
            object Label14: TLabel
              Left = 493
              Top = 166
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1610#1582
              ExplicitLeft = 501
            end
            object Label34: TLabel
              Left = 223
              Top = 166
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1575#1585#1610#1582' '#1578#1575#1587#1610#1587
              ExplicitLeft = 231
            end
            object Label25: TLabel
              Left = 493
              Top = 140
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1605#1583#1610#1585#1610#1578
              FocusControl = edtManageName
              ParentBiDiMode = False
              ExplicitLeft = 501
            end
            object Label26: TLabel
              Left = 223
              Top = 140
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588
              FocusControl = edtManagerSells
              ParentBiDiMode = False
              ExplicitLeft = 231
            end
            object Label21: TLabel
              Left = 500
              Top = 296
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
              ExplicitLeft = 508
            end
            object Label5: TLabel
              Left = 223
              Top = 270
              Width = 18
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = 'Site'
              FocusControl = edtWebSite
              ExplicitLeft = 231
            end
            object Label20: TLabel
              Left = 500
              Top = 270
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1662#1587#1578#1610
              ExplicitLeft = 508
            end
            object Label9: TLabel
              Left = 501
              Top = 244
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1570#1583#1585#1587
              ExplicitLeft = 509
            end
            object Label8: TLabel
              Left = 501
              Top = 218
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1711#1585#1608#1607' '#1570#1583#1585#1587' '
              ExplicitLeft = 509
            end
            object SpeedButton4: TSpeedButton
              Left = 279
              Top = 213
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton4Click
              ExplicitLeft = 287
            end
            object dbtxt_MasirID: TDBText
              Left = 205
              Top = 218
              Width = 68
              Height = 13
              Anchors = [akLeft, akTop, akRight]
              AutoSize = True
              Color = 13948116
              DataField = '_MasirID'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = False
            end
            object Label50: TLabel
              Left = 223
              Top = 192
              Width = 22
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1588#1607#1585
              FocusControl = dblkcbb_Shahr
              ExplicitLeft = 231
            end
            object Label51: TLabel
              Left = 493
              Top = 192
              Width = 28
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1587#1578#1575#1606
              FocusControl = dblkcbb_Ostan
              ExplicitLeft = 501
            end
            object Label35: TLabel
              Left = 503
              Top = 322
              Width = 35
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1605#1604#1610
              ExplicitLeft = 511
            end
            object Label23: TLabel
              Left = 223
              Top = 322
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
              ExplicitLeft = 231
            end
            object Label52: TLabel
              Left = 223
              Top = 296
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578
              ExplicitLeft = 231
            end
            object cmbHCKharidarTypeCode: TDBComboBox
              Left = 86
              Top = 6
              Width = 130
              Height = 21
              Anchors = [akTop, akRight]
              AutoDropDown = True
              Color = clWhite
              DataField = 'HCKharidarTypeCode'
              DataSource = srcCustomers
              TabOrder = 1
            end
            object cmbsex: TDBComboBox
              Tag = 4
              Left = 307
              Top = 344
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sex'
              DataSource = srcCustomers
              Items.Strings = (
                #1605#1585#1583
                #1586#1606
                '...')
              TabOrder = 24
            end
            object dbedtTel2: TDBEdit
              Left = 86
              Top = 58
              Width = 130
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Tel2'
              DataSource = srcCustomers
              TabOrder = 5
              ExplicitLeft = 94
            end
            object edtCustFirstName: TDBEdit
              Left = 86
              Top = 32
              Width = 130
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CustFirstName'
              DataSource = srcCustomers
              TabOrder = 3
              ExplicitLeft = 94
            end
            object edtCustID: TDBEdit
              Left = 307
              Top = 6
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CustID'
              DataSource = srcCustomers
              TabOrder = 0
              ExplicitLeft = 315
            end
            object edtCustName: TDBEdit
              Left = 307
              Top = 32
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CustName'
              DataSource = srcCustomers
              TabOrder = 2
              ExplicitLeft = 315
            end
            object edtemail: TDBEdit
              Left = 37
              Top = 110
              Width = 179
              Height = 21
              TabStop = False
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'email'
              DataSource = srcCustomers
              ParentBiDiMode = False
              TabOrder = 9
              ExplicitLeft = 45
            end
            object edtFax: TDBEdit
              Left = 307
              Top = 110
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Fax'
              DataSource = srcCustomers
              TabOrder = 8
              ExplicitLeft = 315
            end
            object edtMobile: TDBEdit
              Left = 307
              Top = 84
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Mobile'
              DataSource = srcCustomers
              TabOrder = 6
              ExplicitLeft = 315
            end
            object edtTel: TDBEdit
              Left = 307
              Top = 58
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Tel'
              DataSource = srcCustomers
              TabOrder = 4
              ExplicitLeft = 315
            end
            object edtTel3: TDBEdit
              Left = 86
              Top = 84
              Width = 130
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Tel3'
              DataSource = srcCustomers
              TabOrder = 7
              ExplicitLeft = 94
            end
            object Panel11: TPanel
              Left = 1
              Top = 1
              Width = 87
              Height = 104
              Align = alCustom
              BevelWidth = 3
              Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1593#1603#1587
              TabOrder = 26
              object Image1: TImage
                Left = 3
                Top = 3
                Width = 81
                Height = 98
                Align = alClient
                Stretch = True
                OnDblClick = Image1DblClick
                ExplicitLeft = -9
                ExplicitWidth = 96
                ExplicitHeight = 79
              end
            end
            object edtInfoDate: TDBEdit
              Left = 307
              Top = 162
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'InfoDate'
              DataSource = srcCustomers
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              ExplicitLeft = 315
            end
            object edtEstablishDate: TDBEdit
              Left = 37
              Top = 162
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'EstablishDate'
              DataSource = srcCustomers
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              ExplicitLeft = 45
            end
            object edtManageName: TDBEdit
              Left = 307
              Top = 136
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ManageName'
              DataSource = srcCustomers
              TabOrder = 10
              ExplicitLeft = 315
            end
            object edtManagerSells: TDBEdit
              Left = 37
              Top = 136
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ManagerSells'
              DataSource = srcCustomers
              TabOrder = 11
              ExplicitLeft = 45
            end
            object edtpobox: TDBEdit
              Left = 307
              Top = 292
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'pobox'
              DataSource = srcCustomers
              TabOrder = 20
              ExplicitLeft = 315
            end
            object edtWebSite: TDBEdit
              Left = 37
              Top = 266
              Width = 179
              Height = 21
              TabStop = False
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'WebSite'
              DataSource = srcCustomers
              ParentBiDiMode = False
              TabOrder = 19
              ExplicitLeft = 45
            end
            object edtPostalCode: TDBEdit
              Left = 307
              Top = 266
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'PostalCode'
              DataSource = srcCustomers
              TabOrder = 18
              ExplicitLeft = 315
            end
            object dbmmoAddress: TDBMemo
              Left = 45
              Top = 240
              Width = 441
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'Address'
              DataSource = srcCustomers
              TabOrder = 17
              ExplicitWidth = 449
            end
            object dbedtMasirID: TDBEdit
              Left = 307
              Top = 214
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MasirID'
              DataSource = srcCustomers
              TabOrder = 16
              OnKeyDown = DBEdit19KeyDown
              ExplicitLeft = 315
            end
            object dblkcbb_Shahr: TDBLookupComboBox
              Left = 37
              Top = 188
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = '_Shahr'
              DataSource = srcCustomers
              TabOrder = 15
              ExplicitLeft = 45
            end
            object dblkcbb_Ostan: TDBLookupComboBox
              Left = 307
              Top = 188
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = '_Ostan'
              DataSource = srcCustomers
              TabOrder = 14
              ExplicitLeft = 315
            end
            object edtNationalID: TDBEdit
              Left = 307
              Top = 318
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'NationalID'
              DataSource = srcCustomers
              TabOrder = 22
              ExplicitLeft = 315
            end
            object edtEconomicNumber: TDBEdit
              Left = 37
              Top = 318
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'EconomicNumber'
              DataSource = srcCustomers
              TabOrder = 23
              ExplicitLeft = 45
            end
            object edtRegisterNumber: TDBEdit
              Left = 37
              Top = 292
              Width = 179
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'RegisterNumber'
              DataSource = srcCustomers
              TabOrder = 21
              ExplicitLeft = 45
            end
            object GroupBox5: TGroupBox
              Left = 1
              Top = 364
              Width = 588
              Height = 60
              Align = alBottom
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              TabOrder = 25
              ExplicitTop = 365
              ExplicitWidth = 592
              object dbmmoCustomerNote: TDBMemo
                Left = 2
                Top = 15
                Width = 588
                Height = 43
                Align = alClient
                DataField = 'CustomerNote'
                DataSource = srcCustomers
                TabOrder = 0
              end
            end
            object Panel13: TPanel
              Left = 1
              Top = 424
              Width = 588
              Height = 16
              Align = alBottom
              TabOrder = 27
              ExplicitTop = 425
              ExplicitWidth = 592
              object lblFirstUser: TLabel
                Left = 547
                Top = 1
                Width = 44
                Height = 13
                Align = alRight
                Alignment = taRightJustify
                Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
              end
              object dbtxtFirstUser: TDBText
                Left = 478
                Top = 1
                Width = 69
                Height = 13
                Align = alRight
                AutoSize = True
                Color = 13948116
                DataField = 'FirstUser'
                DataSource = srcCustomers
                ParentColor = False
                Transparent = False
              end
              object dbtxtUserName: TDBText
                Left = 1
                Top = 1
                Width = 75
                Height = 13
                Align = alLeft
                AutoSize = True
                Color = 13948116
                DataField = 'LastUser'
                DataSource = srcCustomers
                ParentColor = False
                Transparent = False
              end
              object lbluserName: TLabel
                Left = 76
                Top = 1
                Width = 60
                Height = 13
                Align = alLeft
                Alignment = taRightJustify
                Caption = #1608#1740#1585#1575#1740#1588' '#1705#1606#1606#1583#1607
              end
            end
          end
        end
        object tsActivety: TTabSheet
          Caption = #1601#1593#1575#1604#1610#1578
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgrdCustomersActivity: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 594
            Height = 112
            Align = alClient
            Color = clCream
            DataSource = dsCustomersActivity
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = dbgrdCustomersActivityEditButtonClick
            OnKeyPress = dbgrdCustomersActivityKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_SellsType'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SellsCode'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SellsCode'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Number'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Capacity'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumberCapacity'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ActivityNote'
                Width = 45
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 0
            Top = 112
            Width = 594
            Height = 32
            Align = alBottom
            TabOrder = 1
            object btnAlldel: TBitBtn
              Left = 1
              Top = 1
              Width = 75
              Height = 30
              Action = DataSetDeletedsCustomersActivity
              Align = alLeft
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 76
              Top = 1
              Width = 75
              Height = 30
              Hint = ' '
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 6
              Align = alLeft
              Caption = #1580#1587#1578#1580#1608
              TabOrder = 1
              OnClick = BitBtn16Click
            end
          end
          object pnlCustomersActivityElective: TPanel
            Left = 0
            Top = 144
            Width = 594
            Height = 298
            Align = alBottom
            TabOrder = 2
            object grdCustomersActivityElective: TDBGrid
              Tag = 111
              Left = 1
              Top = 1
              Width = 592
              Height = 296
              Align = alClient
              Color = clCream
              DataSource = srcCustomersActivityElective
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = grdCustomersActivityElectiveDrawColumnCell
              OnDblClick = grdCustomersActivityElectiveDblClick
              OnKeyDown = grdCustomersActivityElectiveKeyDown
              OnKeyPress = grdCustomersActivityElectiveKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = '_SellsType'
                  ReadOnly = True
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_SellsCode'
                  ReadOnly = True
                  Width = 74
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Elective'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ActivityNote'
                  Width = 74
                  Visible = True
                end>
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1605#1583#1610#1585#1575#1606
          ImageIndex = 8
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgrdCustomersManag: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 594
            Height = 410
            Align = alClient
            Color = clCream
            DataSource = dsCustomersManag
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyPress = dbgrdCustomersManagKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_JobCode'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ManagName'
                Width = 18
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Mobile'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tel'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fax'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Email'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BirthDate'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MarriageDate'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'State'
                PickList.Strings = (
                  #1601#1593#1575#1604
                  #1594#1610#1585#1601#1593#1575#1604)
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SendKind'
                Width = 54
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 410
            Width = 594
            Height = 32
            Align = alBottom
            TabOrder = 1
            object BitBtn14: TBitBtn
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 75
              Height = 24
              Action = DataSetDeletedsCustomersManag
              Align = alLeft
              Caption = #1581#1584#1601' '#1585#1583#1610#1601
              TabOrder = 0
            end
            object btn1: TBitBtn
              AlignWithMargins = True
              Left = 487
              Top = 4
              Width = 103
              Height = 24
              Align = alRight
              Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
              TabOrder = 1
              OnClick = btn1Click
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1608#1575#1587#1591' '#1601#1585#1608#1588
          ImageIndex = 5
          object GroupBox1: TGroupBox
            Left = 0
            Top = 34
            Width = 590
            Height = 203
            Align = alClient
            Caption = ' '#1587#1575#1610#1585' '#1608#1575#1587#1591' '#1607#1575' '
            TabOrder = 0
            object dbgrdCustomersBroker: TDBGrid
              Tag = 111
              Left = 2
              Top = 15
              Width = 586
              Height = 154
              Align = alClient
              Color = clCream
              DataSource = dsCustomersBroker
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnEditButtonClick = dbgrdCustomersBrokerEditButtonClick
              OnKeyPress = dbgrdCustomersBrokerKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'PersonID2'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_PersonID2'
                  Width = 246
                  Visible = True
                end>
            end
            object Panel6: TPanel
              Left = 2
              Top = 169
              Width = 586
              Height = 32
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                586
                32)
              object BitBtn11: TBitBtn
                Left = 501
                Top = 4
                Width = 75
                Height = 25
                Anchors = [akTop, akRight]
                Caption = #1575#1606#1578#1582#1575#1576'...'
                TabOrder = 0
                OnClick = BitBtn11Click
                ExplicitLeft = 509
              end
              object BitBtn12: TBitBtn
                Left = 6
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetDeletedsCustomersBroker
                Anchors = [akLeft, akBottom]
                Caption = #1581#1584#1601' '#1585#1583#1610#1601
                TabOrder = 1
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 237
            Width = 590
            Height = 204
            Align = alBottom
            Caption = #1605#1587#1610#1585#1607#1575
            TabOrder = 1
            object dbgrdCustomersMasir: TDBGrid
              Tag = 111
              Left = 2
              Top = 15
              Width = 586
              Height = 155
              Align = alClient
              Color = clCream
              DataSource = dsCustomersMasir
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnEditButtonClick = dbgrdCustomersMasirEditButtonClick
              OnKeyPress = dbgrdCustomersMasirKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'MasirID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_MasirID'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MasirNote'
                  Width = 282
                  Visible = True
                end>
            end
            object Panel8: TPanel
              Left = 2
              Top = 170
              Width = 586
              Height = 32
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                586
                32)
              object BitBtn13: TBitBtn
                Left = 12
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetDeletedsCustomersMasir
                Anchors = [akLeft, akBottom]
                Caption = #1581#1584#1601' '#1585#1583#1610#1601
                TabOrder = 0
              end
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 590
            Height = 34
            Align = alTop
            TabOrder = 2
            DesignSize = (
              590
              34)
            object DBText2: TDBText
              Left = 194
              Top = 5
              Width = 199
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_PersonID1'
              DataSource = srcCustomers
              ParentColor = False
              Transparent = False
              ExplicitLeft = 198
            end
            object SpeedButton3: TSpeedButton
              Left = 398
              Top = 3
              Width = 23
              Height = 22
              Hint = 'PersonID1'
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton3Click
              ExplicitLeft = 402
            end
            object Label16: TLabel
              Left = 490
              Top = 7
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1608#1575#1587#1591' '#1575#1589#1604#1610' '#1601#1585#1608#1588' '
              ExplicitLeft = 494
            end
            object edtPersonID1: TDBEdit
              Left = 422
              Top = 3
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'PersonID1'
              DataSource = srcCustomers
              TabOrder = 0
              OnKeyDown = DBEdit15KeyDown
              ExplicitLeft = 426
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1603#1606#1578#1585#1604
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            590
            441)
          object Label12: TLabel
            Left = 469
            Top = 136
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1602#1610#1605#1578' '#1601#1575#1603#1578#1608#1585
            ExplicitLeft = 477
          end
          object Label33: TLabel
            Left = 469
            Top = 167
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1588#1582#1610#1589
            ExplicitLeft = 477
          end
          object Label40: TLabel
            Left = 469
            Top = 221
            Width = 115
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1610#1578' '#1662#1610#1588' '#1601#1585#1590' '#1601#1585#1608#1588
            ExplicitLeft = 477
          end
          object Label45: TLabel
            Left = 469
            Top = 276
            Width = 93
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1662#1610#1588' '#1601#1585#1590' '#1605#1588#1578#1585#1610'3'
            ExplicitLeft = 477
          end
          object SpeedButton7: TSpeedButton
            Left = 363
            Top = 272
            Width = 23
            Height = 22
            Hint = 'PersonID3'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitLeft = 371
          end
          object dbtxt_PersonID3: TDBText
            Left = 162
            Top = 275
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_PersonID3'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 170
          end
          object Label46: TLabel
            Left = 469
            Top = 310
            Width = 104
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1662#1610#1588' '#1601#1585#1590' '#1605#1581#1604' '#1605#1589#1585#1601
            ExplicitLeft = 477
          end
          object SpeedButton8: TSpeedButton
            Left = 363
            Top = 305
            Width = 23
            Height = 22
            Hint = 'PersonID1'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton8Click
            ExplicitLeft = 371
          end
          object dbtxt_UseUnitName: TDBText
            Left = 162
            Top = 308
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_UseUnitName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 170
          end
          object Label47: TLabel
            Left = 469
            Top = 340
            Width = 94
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1601#1585#1593#1610
            ExplicitLeft = 477
          end
          object SpeedButton9: TSpeedButton
            Left = 363
            Top = 335
            Width = 23
            Height = 22
            Hint = 'PersonID1'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton9Click
            ExplicitLeft = 371
          end
          object dbtxt_CustomerGrpID2: TDBText
            Left = 162
            Top = 338
            Width = 199
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '_CustomerGrpID2'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitLeft = 170
          end
          object Label19: TLabel
            Left = 469
            Top = 105
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1585#1582
            ExplicitLeft = 477
          end
          object Label38: TLabel
            Left = 469
            Top = 73
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1575#1608#1604#1608#1610#1578' '#1578#1581#1608#1610#1604
            ExplicitLeft = 477
          end
          object Label43: TLabel
            Left = 190
            Top = 42
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1605#1593#1585#1601
            ExplicitLeft = 198
          end
          object Label28: TLabel
            Left = 190
            Top = 73
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1578#1582#1601#1610#1601
            FocusControl = edtDiscountNote
            ExplicitLeft = 198
          end
          object Label29: TLabel
            Left = 190
            Top = 105
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1589#1583#1578#1582#1601#1610#1601'/'#1601#1585#1605#1608#1604
            FocusControl = edtDiscount
            ExplicitLeft = 198
          end
          object Label30: TLabel
            Left = 190
            Top = 136
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1583#1578' '#1662#1585#1575#1582#1578'('#1585#1608#1586')'#8207
            FocusControl = edtDayTime
            ExplicitLeft = 198
          end
          object Label31: TLabel
            Left = 190
            Top = 167
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1581#1605#1604
            ExplicitLeft = 198
          end
          object Label13: TLabel
            Left = 469
            Top = 42
            Width = 93
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1575#1610#1585' '#1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578' '#1607#1575
            ExplicitLeft = 477
          end
          object CmbValuationType: TDBComboBox
            Left = 290
            Top = 132
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ValuationType'
            DataSource = srcCustomers
            TabOrder = 6
          end
          object CmbaccStateDefault: TDBComboBox
            Left = 290
            Top = 163
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'accStateDefault'
            DataSource = srcCustomers
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1576#1583#1607#1603#1575#1585
              #1576#1587#1578#1575#1606#1603#1575#1585)
            TabOrder = 8
          end
          object cmbSellsDefaultState: TDBComboBox
            Left = 9
            Top = 217
            Width = 458
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SellsDefaultState'
            DataSource = srcCustomers
            Items.Strings = (
              #1576#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610
              #1576#1607' '#1581#1587#1575#1576' '#1608#1575#1587#1591' '#1576#1585#1575#1587#1575#1587' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1583#1610#1606#1711' '#1605#1588#1578#1585#1610
              #1576#1607' '#1581#1587#1575#1576' '#1608#1575#1587#1591' '#1576#1585#1575#1587#1575#1587' '#1578#1588#1582#1610#1589' '#1583#1585' '#1601#1575#1603#1578#1608#1585
              #1576#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' '#1576#1585#1575#1587#1575#1587' '#1578#1588#1582#1610#1589' '#1583#1585' '#1601#1575#1603#1578#1608#1585)
            TabOrder = 10
          end
          object dbedtPersonID3: TDBEdit
            Left = 392
            Top = 272
            Width = 75
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID3'
            DataSource = srcCustomers
            TabOrder = 11
            OnKeyDown = DBEdit15KeyDown
            ExplicitLeft = 400
          end
          object dbedtUseUnitID: TDBEdit
            Left = 392
            Top = 306
            Width = 75
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UseUnitID'
            DataSource = srcCustomers
            TabOrder = 12
            OnKeyDown = DBEdit15KeyDown
            ExplicitLeft = 400
          end
          object dbedtCustomerGrpID2: TDBEdit
            Left = 392
            Top = 336
            Width = 75
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustomerGrpID2'
            DataSource = srcCustomers
            TabOrder = 13
            OnKeyDown = DBEdit15KeyDown
            ExplicitLeft = 400
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 590
            Height = 32
            Align = alTop
            TabOrder = 14
            DesignSize = (
              590
              32)
            object Label18: TLabel
              Left = 517
              Top = 10
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1581#1608#1607' '#1601#1585#1608#1588
              ExplicitLeft = 389
            end
            object Label39: TLabel
              Left = 170
              Top = 10
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1585#1575#1603#1586' '#1601#1585#1608#1588
            end
            object cmbSellsMethod: TDBComboBox
              Left = 352
              Top = 6
              Width = 160
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'SellsMethod'
              DataSource = srcCustomers
              TabOrder = 0
            end
            object cmbSellsEmporium: TDBComboBox
              Left = 8
              Top = 6
              Width = 160
              Height = 21
              DataField = 'SellsEmporium'
              DataSource = srcCustomers
              TabOrder = 1
            end
          end
          object edtCustomersRow: TDBEdit
            Left = 290
            Top = 69
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustomersRow'
            DataSource = srcCustomers
            TabOrder = 2
            ExplicitLeft = 298
          end
          object edtContactRate: TDBEdit
            Left = 290
            Top = 101
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ContactRate'
            DataSource = srcCustomers
            TabOrder = 4
            ExplicitLeft = 298
          end
          object dbedtReagentName: TDBEdit
            Left = 9
            Top = 38
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReagentName'
            DataSource = srcCustomers
            TabOrder = 1
            ExplicitLeft = 17
          end
          object edtDiscountNote: TDBEdit
            Left = 9
            Top = 69
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DiscountNote'
            DataSource = srcCustomers
            TabOrder = 3
            ExplicitLeft = 17
          end
          object edtDiscount: TDBEdit
            Left = 9
            Top = 101
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Discount'
            DataSource = srcCustomers
            TabOrder = 5
            ExplicitLeft = 17
          end
          object edtDayTime: TDBEdit
            Left = 9
            Top = 132
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DayTime'
            DataSource = srcCustomers
            TabOrder = 7
            ExplicitLeft = 17
          end
          object CmbConveyKind: TDBComboBox
            Left = 9
            Top = 163
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ConveyKind'
            DataSource = srcCustomers
            Items.Strings = (
              #1575#1606#1578#1588#1575#1585#1575#1578#1610
              #1603#1578#1575#1576#1588#1607#1585
              #1588#1585#1603#1578)
            TabOrder = 9
          end
          object CmbGrpActionCustomer: TDBComboBox
            Left = 290
            Top = 38
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'GrpActionCustomer'
            DataSource = srcCustomers
            Items.Strings = (
              #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '#1606#1608#1593' 250')
            TabOrder = 0
          end
        end
        object tsAcc: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            590
            441)
          object Label11: TLabel
            Left = 440
            Top = 229
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
            ExplicitLeft = 448
          end
          object SpeedButton2: TSpeedButton
            Left = 342
            Top = 224
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton2Click
            ExplicitLeft = 350
          end
          object DBText1: TDBText
            Left = 16
            Top = 227
            Width = 324
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__DetailCode'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 332
          end
          object Label22: TLabel
            Left = 440
            Top = 266
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit18
            ExplicitLeft = 448
          end
          object SpeedButton5: TSpeedButton
            Left = 342
            Top = 261
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 350
          end
          object DBText5: TDBText
            Left = 16
            Top = 264
            Width = 324
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 332
          end
          object Label24: TLabel
            Left = 440
            Top = 303
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit19
            ExplicitLeft = 448
          end
          object SpeedButton6: TSpeedButton
            Left = 342
            Top = 298
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 350
          end
          object DBText6: TDBText
            Left = 16
            Top = 301
            Width = 324
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName2'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 332
          end
          object SpeedButton10: TSpeedButton
            Left = 342
            Top = 334
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
            ExplicitLeft = 350
          end
          object DBText3: TDBText
            Left = 16
            Top = 337
            Width = 324
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 332
          end
          object Label48: TLabel
            Left = 440
            Top = 339
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit10
            ExplicitLeft = 448
          end
          object DBText4: TDBText
            Left = 16
            Top = 191
            Width = 324
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__TopicCodeName'
            DataSource = srcCustomers
            ParentColor = False
            Transparent = False
            ExplicitWidth = 332
          end
          object SpeedButton11: TSpeedButton
            Left = 342
            Top = 188
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
            ExplicitLeft = 350
          end
          object Label49: TLabel
            Left = 442
            Top = 193
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1581#1587#1575#1576
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 450
          end
          object Label15: TLabel
            Left = 445
            Top = 70
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
            ExplicitLeft = 453
          end
          object Label42: TLabel
            Left = 445
            Top = 41
            Width = 109
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1581#1583#1575#1603#1579#1585' '#1605#1576#1604#1594' '#1601#1575#1603#1578#1608#1585' '#1580#1575#1585#1610
            FocusControl = edtMaxCreditCurrentForm
            ExplicitLeft = 453
          end
          object Label32: TLabel
            Left = 445
            Top = 100
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1606#1608#1593' '#1575#1585#1586
            ParentBiDiMode = False
            ExplicitLeft = 453
          end
          object Label1: TLabel
            Left = 445
            Top = 159
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1608#1575#1581#1583' '#1662#1608#1604#1610
            ParentBiDiMode = False
            ExplicitLeft = 453
          end
          object Label36: TLabel
            Left = 445
            Top = 129
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
            FocusControl = edtCustAccountNumber
            ParentBiDiMode = False
            ExplicitLeft = 453
          end
          object DBEdit15: TDBEdit
            Left = 368
            Top = 225
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_DetailCode'
            DataSource = srcCustomers
            TabOrder = 6
            OnKeyDown = DBEdit15KeyDown
            ExplicitLeft = 376
          end
          object DBEdit18: TDBEdit
            Left = 368
            Top = 262
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcCustomers
            TabOrder = 7
            OnKeyDown = DBEdit18KeyDown
            ExplicitLeft = 376
          end
          object DBEdit19: TDBEdit
            Left = 368
            Top = 299
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcCustomers
            TabOrder = 8
            OnKeyDown = DBEdit19KeyDown
            ExplicitLeft = 376
          end
          object DBEdit10: TDBEdit
            Left = 368
            Top = 335
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcCustomers
            TabOrder = 10
            OnKeyDown = DBEdit19KeyDown
            ExplicitLeft = 376
          end
          object DBEdit30: TDBEdit
            Left = 368
            Top = 189
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcCustomers
            TabOrder = 5
            ExplicitLeft = 376
          end
          object edtMaxCredit: TDBEdit
            Left = 228
            Top = 66
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MaxCredit'
            DataSource = srcCustomers
            TabOrder = 1
            ExplicitLeft = 236
          end
          object edtMaxCreditCurrentForm: TDBEdit
            Left = 228
            Top = 37
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MaxCreditCurrentForm'
            DataSource = srcCustomers
            TabOrder = 0
            ExplicitLeft = 236
          end
          object CmbArzTypeID: TDBComboBox
            Left = 228
            Top = 96
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ArzTypeID'
            DataSource = srcCustomers
            Items.Strings = (
              #1583#1585' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1585#1610#1575#1604' '#1608#1575#1585#1583' '#1588#1608#1583)
            TabOrder = 2
          end
          object edtCustAccountNumber: TDBEdit
            Left = 228
            Top = 125
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustAccountNumber'
            DataSource = srcCustomers
            TabOrder = 3
            ExplicitLeft = 236
          end
          object dblkcbb_AccountKind: TDBLookupComboBox
            Left = 228
            Top = 155
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = '_AccountKind'
            DataSource = srcCustomers
            TabOrder = 4
            ExplicitLeft = 236
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 367
            Width = 590
            Height = 74
            Align = alBottom
            Caption = #1605#1578#1606' '#1579#1575#1576#1578' '#1583#1585' '#1608#1580#1607' ('#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1670#1603')'
            TabOrder = 9
            ExplicitTop = 368
            ExplicitWidth = 594
            object dbmmoCustomerCheckNote: TDBMemo
              Left = 2
              Top = 15
              Width = 590
              Height = 57
              Align = alClient
              DataField = 'CustomerCheckNote'
              DataSource = srcCustomers
              TabOrder = 0
            end
          end
        end
        object tsOtherGroup: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
          ImageIndex = 9
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 590
            Height = 441
            Align = alClient
            Caption = #1587#1575#1740#1585' '#1711#1585#1608#1607#1607#1575#1740' '#1605#1588#1578#1585#1740
            TabOrder = 0
            object chklstOtherGroup: TCheckListBox
              Left = 2
              Top = 15
              Width = 586
              Height = 424
              Align = alClient
              Color = clCream
              Columns = 2
              ItemHeight = 13
              TabOrder = 0
              OnClick = chklstOtherGroupClick
              OnDblClick = chklstOtherGroupClick
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1587#1575#1740#1585
          ImageIndex = 7
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid1: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 594
            Height = 442
            Align = alClient
            Color = clCream
            DataSource = srcCustomersTypeInfo
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = '_FormType'
                Width = 188
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_FormInfoID'
                Width = 100
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 472
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcCustomers
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcCustomers
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCustomers
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcCustomers
    end
    inherited actSearch_: TAction
      ShortCut = 114
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcCustomers
    end
    object actPrint: TAction [8]
      Caption = #1670#1600#1600#1600#1575#1662'(F7)'
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction [9]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actViewFile: TAction [11]
      Tag = -2
      Caption = #1662#1610#1608#1587#1578' '#1608' '#1575#1587#1603#1606' ...'
      OnExecute = actViewFileExecute
    end
    object actChangeCustID: TAction [12]
      Caption = 'actChangeCustID'
      OnExecute = actChangeCustIDExecute
    end
    object actGetExel: TAction [13]
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExelExecute
    end
    object actCustomersInterView: TAction [14]
      Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1610
      OnExecute = actCustomersInterViewExecute
    end
    inherited actSmsSend: TAction
      OnExecute = actSmsSendExecute
    end
    object actInfoSMSF: TAction
      Caption = 'actInfoSMSF'
      OnExecute = actInfoSMSFExecute
    end
    object DataSetDeletedsCustomersActivity: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      Hint = 'Delete'
      ImageIndex = 6
      DataSource = dsCustomersActivity
    end
    object DataSetDeletedsCustomersBroker: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      Hint = 'Delete'
      ImageIndex = 7
      DataSource = dsCustomersBroker
    end
    object DataSetDeletedsCustomersManag: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      Hint = 'Delete'
      ImageIndex = 8
      DataSource = dsCustomersManag
    end
    object DataSetDeletedsCustomersMasir: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      Hint = 'Delete'
      ImageIndex = 9
      DataSource = dsCustomersMasir
    end
  end
  inherited ImageList1: TImageList
    Left = 144
    Top = 6
    Bitmap = {
      494C01010A000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000E007E00700000000E007E00700000000E007E00700000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFC3F8000FFFFFFFF
      FC3F8000FFFFFFFFFC3F8000FFFFFFFFFC3F8000FFFFFFFFFC3F8000FFFFFFFF
      80018000FFFFFFFF80018000E007E00780018000E007E00780018000E007E007
      FC3F8000FFFFFFFFFC3F8000FFFFFFFFFC3F8000FFFFFFFFFC3FC001FFFFFFFF
      FC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object srcCustomers: TDataSource
    AutoEdit = False
    DataSet = qryCustomers
    OnStateChange = srcCustomersStateChange
    Left = 640
    Top = 256
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
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryCustomersAfterOpen
    AfterInsert = qryCustomersAfterInsert
    AfterEdit = qryCustomersAfterEdit
    BeforePost = qryCustomersBeforePost
    AfterPost = qryCustomersAfterPost
    BeforeDelete = qryCustomersBeforeDelete
    AfterDelete = qryCustomersAfterDelete
    AfterScroll = qryCustomersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Customers')
    Left = 596
    Top = 7
    object qryCustomersCustID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610
      FieldName = 'CustID'
      Required = True
      OnChange = qryCustomersCustIDChange
    end
    object qryCustomersCustomerGrpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
      Required = True
    end
    object qryCustomersCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryCustomersBalance: TBCDField
      Tag = 3
      FieldName = 'Balance'
      Precision = 19
    end
    object qryCustomersCountry: TStringField
      Tag = 3
      DisplayLabel = #1603#1588#1608#1585
      FieldName = 'Country'
    end
    object qryCustomersCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
    end
    object qryCustomersWebSite: TStringField
      Tag = 3
      FieldName = 'WebSite'
      Size = 40
    end
    object qryCustomersRegion: TStringField
      Tag = 3
      DisplayLabel = #1605#1606#1591#1602#1607
      FieldName = 'Region'
      Size = 30
    end
    object qryCustomersAddress: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      Required = True
      Size = 300
    end
    object qryCustomersTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Required = True
      Size = 30
    end
    object qryCustomersFax: TStringField
      Tag = 3
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersemail: TStringField
      Tag = 3
      FieldName = 'email'
      Size = 30
    end
    object qryCustomerspobox: TStringField
      Tag = 3
      DisplayLabel = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
      FieldName = 'pobox'
      Size = 15
    end
    object qryCustomersacc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryCustomers__DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldKind = fkLookup
      FieldName = '__DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      Size = 250
      Lookup = True
    end
    object qryCustomersMaxCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1587#1602#1601' '#1575#1593#1578#1576#1575#1585
      FieldName = 'MaxCredit'
      currency = True
      Precision = 19
    end
    object qryCustomersServiceCalcType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1582#1583#1605#1575#1578
      FieldName = 'ServiceCalcType'
      OnChange = qryCustomersServiceCalcTypeChange
    end
    object qryCustomersServicePrice: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1582#1583#1605#1575#1578
      FieldName = 'ServicePrice'
      Precision = 19
    end
    object qryCustomersEconomicNumber: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'EconomicNumber'
      Required = True
    end
    object qryCustomersNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Required = True
      Size = 12
    end
    object qryCustomersPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1587#1578#1610
      FieldName = 'PostalCode'
      Required = True
      Size = 12
    end
    object qryCustomersModifyDate: TDateTimeField
      Tag = 3
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryCustomersCustomerNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryCustomersValuationType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1601#1575#1603#1578#1608#1585#1607#1575
      FieldName = 'ValuationType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersInfoWeight: TFloatField
      Tag = 3
      FieldName = 'InfoWeight'
    end
    object qryCustomersInfoDate: TStringField
      Tag = 3
      FieldName = 'InfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersGrpActionCustomer: TWordField
      Tag = 3
      FieldName = 'GrpActionCustomer'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersacc_CTopicCode: TStringField
      Tag = 3
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryCustomersacc_CTopicCode2: TStringField
      Tag = 3
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryCustomers__CTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 250
      Lookup = True
    end
    object qryCustomers__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 250
      Lookup = True
    end
    object qryCustomersContactRate: TBCDField
      Tag = 3
      FieldName = 'ContactRate'
      currency = True
      Precision = 19
    end
    object qryCustomersManageName: TStringField
      Tag = 3
      FieldName = 'ManageName'
      Size = 60
    end
    object qryCustomersManagerSells: TStringField
      Tag = 3
      FieldName = 'ManagerSells'
      Size = 60
    end
    object qryCustomersContactNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContactNo'
    end
    object qryCustomersDiscountNote: TStringField
      Tag = 3
      FieldName = 'DiscountNote'
      Size = 30
    end
    object qryCustomersDiscount: TFloatField
      Tag = 3
      FieldName = 'Discount'
    end
    object qryCustomersDayTime: TIntegerField
      Tag = 3
      FieldName = 'DayTime'
    end
    object qryCustomersConveyKind: TWordField
      Tag = 3
      FieldName = 'ConveyKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersArzTypeID: TIntegerField
      Tag = 3
      FieldName = 'ArzTypeID'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersaccStateDefault: TWordField
      Tag = 3
      FieldName = 'accStateDefault'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
      Required = True
    end
    object qryCustomersCustomersRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1605#1588#1578#1585#1610
      FieldName = 'CustomersRow'
    end
    object qryCustomersPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustomers_PersonID1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_PersonID1'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryCustomersEstablishDate: TStringField
      FieldName = 'EstablishDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
      OnGetText = ALLLookUpGetText
      OnSetText = ALLLookUpSetText
    end
    object qryCustomersSellsDefaultState: TWordField
      FieldName = 'SellsDefaultState'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryCustomers_MasirID: TStringField
      DisplayLabel = #1711#1585#1608#1607' '#1570#1583#1585#1587' '
      FieldKind = fkLookup
      FieldName = '_MasirID'
      LookupDataSet = qryAddressInMasir
      LookupKeyFields = 'MasirID'
      LookupResultField = 'MasirText'
      KeyFields = 'MasirID'
      Size = 250
      Lookup = True
    end
    object qryCustomersMaxCreditCurrentForm: TBCDField
      FieldName = 'MaxCreditCurrentForm'
      currency = True
      Precision = 19
    end
    object qryCustomersReagentName: TWideStringField
      FieldName = 'ReagentName'
      Size = 60
    end
    object qryCustomersTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryCustomersTel3: TWideStringField
      FieldName = 'Tel3'
      Size = 30
    end
    object qryCustomersPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object strngfldCustomers_PersonID3: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonID3'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID3'
      Size = 200
      Lookup = True
    end
    object qryCustomersUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryCustomers_UseUnitName: TStringField
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupDataSet = qryUseUnits
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      Size = 100
      Lookup = True
    end
    object qryCustomersCustomerGrpID2: TIntegerField
      FieldName = 'CustomerGrpID2'
    end
    object qryCustomers_CustomerGrpID2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerGrpID2'
      LookupDataSet = qryCustomersGroup
      LookupKeyFields = 'CustomerGrpID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'CustomerGrpID2'
      Size = 200
      Lookup = True
    end
    object qryCustomersacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryCustomers__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryCustomersacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryCustomers__TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '__TopicCodeName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryCustomersCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryCustomersRegisterNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1579#1576#1578
      FieldName = 'RegisterNumber'
      Required = True
      Size = 30
    end
    object qryCustomersLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qryCustomersFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qryCustomersCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryCustomersCustFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryCustomersCustomerActive: TWordField
      FieldName = 'CustomerActive'
    end
    object qryCustomersAccountKind: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountKind'
    end
    object qryCustomers_AccountKind: TStringField
      FieldKind = fkLookup
      FieldName = '_AccountKind'
      LookupDataSet = DmF.qryCurrencies
      LookupKeyFields = 'CurrenciesID'
      LookupResultField = 'CurrenciesName'
      KeyFields = 'AccountKind'
      Size = 50
      Lookup = True
    end
    object qryCustomersCustomerCheckNote: TStringField
      FieldName = 'CustomerCheckNote'
      Size = 255
    end
    object qryCustomersHCKharidarTypeCode: TWordField
      FieldName = 'HCKharidarTypeCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersStateCode: TIntegerField
      FieldName = 'StateCode'
    end
    object qryCustomers_Ostan: TStringField
      FieldKind = fkLookup
      FieldName = '_Ostan'
      LookupDataSet = DmF.qryOstan
      LookupKeyFields = 'OstanCode'
      LookupResultField = 'Ostan'
      KeyFields = 'StateCode'
      OnChange = qryCustomers_OstanChange
      Size = 255
      Lookup = True
    end
    object qryCustomersCityCode: TIntegerField
      FieldName = 'CityCode'
    end
    object qryCustomers_Shahr: TStringField
      FieldKind = fkLookup
      FieldName = '_Shahr'
      LookupDataSet = DmF.qryShahr
      LookupKeyFields = 'ShahrCode'
      LookupResultField = 'Shahr'
      KeyFields = 'CityCode'
      Size = 255
      Lookup = True
    end
    object qryCustomerssex: TWordField
      FieldName = 'sex'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryCustomersEditDateTime: TDateTimeField
      FieldName = 'EditDateTime'
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'F:\4share\repCustomers5.rtm'
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
    Left = 728
    Top = 319
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clSilver
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLabel1GetText
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
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284427
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1852
        mmTop = 8996
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 273315
        mmTop = 17992
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1606#1575#1588#1585#1610#1606' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583' (('#1582#1585#1610#1583' '#1602#1591#1593#1610')) '#1578#1575' '#1578#1575#1585#1610#1582' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9525
        mmLeft = 94456
        mmTop = 7408
        mmWidth = 105410
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 234686
        mmTop = 17992
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585#1610#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 215636
        mmTop = 19050
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 206111
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1601#1585#1608#1588' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 187061
        mmTop = 19050
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183621
        mmTop = 17992
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 161661
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1593#1602#1583' '#1602#1585#1575#1585#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5927
        mmLeft = 162190
        mmTop = 19050
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 140494
        mmTop = 17992
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 17992
        mmWidth = 794
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 146844
        mmTop = 18785
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 55827
        mmTop = 17992
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 114565
        mmTop = 18785
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 30427
        mmTop = 17992
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1582#1601#1610#1601' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 74484
        mmTop = 18785
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1605#1583#1578' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 37739
        mmTop = 18521
        mmWidth = 10513
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1607#1586#1610#1606#1607' '#1581#1605#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6491
        mmLeft = 8423
        mmTop = 18785
        mmWidth = 11994
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1575#1606#1578#1588#1575#1585#1575#1578' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5927
        mmLeft = 247650
        mmTop = 19050
        mmWidth = 12418
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 275184
        mmTop = 19315
        mmWidth = 7902
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'InfoDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 75936
        mmTop = 8996
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 281516
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 234686
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 273315
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ManageName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 206905
        mmTop = 265
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 206111
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183621
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ManagerSells'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 184415
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 161661
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InfoDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6491
        mmLeft = 163513
        mmTop = 529
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 140494
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 99219
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'ContactNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 141288
        mmTop = 529
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 55827
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Tel'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 100277
        mmTop = 529
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 30427
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'DiscountNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 56621
        mmTop = 529
        mmWidth = 42598
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'DayTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 31221
        mmTop = 529
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 8731
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 3439
        mmWidth = 283634
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 235744
        mmTop = 794
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 275696
        mmTop = 265
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
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
    DataSource = srcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 720
    Top = 263
  end
  object PopMPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 727
    Top = 384
    object AllClick: TMenuItem
      Caption = 'Use Name'
      Visible = False
      OnClick = AllClickClick
    end
    object RepCustomers1: TMenuItem
      Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      OnClick = AllClickClick
    end
    object RepCustomers2: TMenuItem
      Caption = #1578#1604#1601#1606' '#1608' '#1601#1575#1603#1587
      OnClick = AllClickClick
    end
    object RepCustomers3: TMenuItem
      Caption = #1711#1585#1608#1607' '#1601#1593#1575#1604#1610#1578
      OnClick = AllClickClick
    end
    object RepCustomers4: TMenuItem
      Caption = #1582#1583#1605#1575#1578
      OnClick = AllClickClick
    end
    object RepCustomers5: TMenuItem
      Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      OnClick = AllClickClick
    end
    object RepCustomers7: TMenuItem
      Caption = #1605#1583#1740#1585#1575#1606
      OnClick = AllClickClick
    end
    object RepCustomers6: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
      OnClick = AllClickClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnClick = N10Click
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 299
    Top = 4
    object N3: TMenuItem
      Action = actSearch_
    end
    object N4: TMenuItem
      Caption = #1580#1587#1578#1580#1608'/'#1601#1610#1604#1578#1585
      OnClick = N4Click
    end
  end
  object sd: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = sdPopup
    Left = 656
    Top = 171
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1580#1575#1585#1610
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
      object MenuItem1: TMenuItem
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607' '#1607#1575#1610' '#1605#1588#1578#1585#1610
        Visible = False
        OnClick = Mnu_AllClickClick
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object actChangeCustID1: TMenuItem
      Action = actChangeCustID
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = actViewFile
    end
  end
  object qryCustomersBroker: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeEdit
    AfterInsert = qryCustomersBrokerAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    BeforeDelete = qryCustomersQryBeforeDelete
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
      'SELECT     *'
      'FROM         CustomersBroker'
      'WHERE     (PersonID1 = :CustID )')
    Left = 142
    Top = 405
    object qryCustomersBrokerPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustomersBrokerPersonID2: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'PersonID2'
    end
    object qryCustomersBroker_PersonID2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_PersonID2'
      LookupDataSet = qryLookUpCust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Required = True
      Size = 200
      Lookup = True
    end
  end
  object dsCustomersBroker: TDataSource
    DataSet = qryCustomersBroker
    Left = 680
    Top = 431
  end
  object qryLookUpCust: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Customers')
    Left = 643
    Top = 303
  end
  object qryCustomersActivity: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeEdit
    AfterInsert = qryCustomersBrokerAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    BeforeDelete = qryCustomersQryBeforeDelete
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
      'SELECT        PersonID1, SellsType, SellsCode, Number, Capacity,'
      '  NumberCapacity, ActivityNote, Elective'
      'FROM            CustomersActivity'
      'WHERE        (PersonID1 = :CustID) AND (SellsType IN'
      '                             (SELECT        SellsType'
      '                                FROM            SellsTypes'
      '                                WHERE        (IsElective = 0)))')
    Left = 272
    Top = 180
    object qryCustomersActivityPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersActivitySellsType: TIntegerField
      FieldName = 'SellsType'
    end
    object qryCustomersActivity_SellsType: TStringField
      DisplayLabel = #1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = '_SellsType'
      LookupDataSet = qrySellsTypes
      LookupKeyFields = 'SellsType'
      LookupResultField = 'SellsTypeName'
      KeyFields = 'SellsType'
      Required = True
      Size = 200
      Lookup = True
    end
    object qryCustomersActivitySellsCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'SellsCode'
      OnGetText = qryCustomersActivitySellsCodeGetText
    end
    object qryCustomersActivity_SellsCode: TStringField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578
      FieldKind = fkLookup
      FieldName = '_SellsCode'
      LookupDataSet = qrySellsInfo
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'SellsCode'
      Size = 200
      Lookup = True
    end
    object qryCustomersActivityNumber: TIntegerField
      Tag = 3
      DisplayLabel = ' '#1578#1593#1583#1575#1583' '#1608#1575#1581#1583
      FieldName = 'Number'
    end
    object qryCustomersActivityCapacity: TIntegerField
      Tag = 3
      DisplayLabel = #1592#1585#1601#1740#1578' '#1608#1575#1581#1583
      FieldName = 'Capacity'
    end
    object qryCustomersActivityNumberCapacity: TIntegerField
      Tag = 3
      DisplayLabel = #1592#1585#1601#1740#1578' '#1705#1604
      FieldName = 'NumberCapacity'
      ReadOnly = True
    end
    object qryCustomersActivityActivityNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ActivityNote'
      Size = 200
    end
  end
  object dsCustomersActivity: TDataSource
    DataSet = qryCustomersActivity
    Left = 88
    Top = 88
  end
  object qrySellsTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsTypes')
    Left = 523
    Top = 167
  end
  object qrySellsInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo')
    Left = 547
    Top = 335
  end
  object qryCustomersManag: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeEdit
    AfterInsert = qryCustomersBrokerAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    BeforeDelete = qryCustomersQryBeforeDelete
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
      'SELECT    *'
      'FROM         CustomersManag'
      'WHERE     (PersonID1 = :CustID )')
    Left = 352
    Top = 435
    object qryCustomersManagPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersManagJobCode: TIntegerField
      FieldName = 'JobCode'
    end
    object qryCustomersManag_JobCode: TStringField
      DisplayLabel = #1587#1605#1578
      FieldKind = fkLookup
      FieldName = '_JobCode'
      LookupDataSet = qrySellsInfo52Job
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'JobCode'
      Required = True
      Size = 200
      Lookup = True
    end
    object qryCustomersManagManagName: TWideStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'ManagName'
      Required = True
      Size = 100
    end
    object qryCustomersManagMobile: TStringField
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryCustomersManagTel: TStringField
      DisplayLabel = #1578#1604#1601#1606' '#1579#1575#1576#1578
      FieldName = 'Tel'
      Size = 30
    end
    object qryCustomersManagFax: TStringField
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersManagEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object qryCustomersManagBirthDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersManagMarriageDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1586#1583#1608#1575#1580
      FieldName = 'MarriageDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCustomersManagState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryCustomersManagStateGetText
      OnSetText = qryCustomersManagStateSetText
    end
    object qryCustomersManagSendKind: TIntegerField
      FieldName = 'SendKind'
    end
    object qryCustomersManag_SendKind: TStringField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1587#1575#1604
      FieldKind = fkLookup
      FieldName = '_SendKind'
      LookupDataSet = qrySellsInfo46SendKind
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'SendKind'
      Size = 200
      Lookup = True
    end
  end
  object dsCustomersManag: TDataSource
    DataSet = qryCustomersManag
    Left = 86
    Top = 138
  end
  object qrySellsInfo52Job: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     (SellsType = 52)')
    Left = 411
    Top = 271
  end
  object qrySellsInfo46SendKind: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SellsInfo'
      'WHERE     SellsType = 46')
    Left = 475
    Top = 359
  end
  object dsCustomersMasir: TDataSource
    DataSet = qryCustomersMasir
    Left = 486
    Top = 324
  end
  object qryCustomersMasir: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryCustomersBrokerBeforeEdit
    AfterInsert = qryCustomersBrokerAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    BeforeDelete = qryCustomersQryBeforeDelete
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
      'SELECT    *'
      'FROM         CustomersMasir'
      'WHERE     (PersonID1 = :CustID )')
    Left = 841
    Top = 335
    object qryCustomersMasirPersonID1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object qryCustomersMasirMasirID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1587#1610#1585
      FieldName = 'MasirID'
    end
    object qryCustomersMasir_MasirID: TStringField
      DisplayLabel = #1605#1587#1610#1585
      FieldKind = fkLookup
      FieldName = '_MasirID'
      LookupDataSet = qryAddressInMasir
      LookupKeyFields = 'MasirID'
      LookupResultField = 'MasirText'
      KeyFields = 'MasirID'
      Required = True
      Size = 500
      Lookup = True
    end
    object qryCustomersMasirMasirNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'MasirNote'
      Size = 100
    end
  end
  object qryAddressInMasir: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         AddressInMasir'
      '')
    Left = 651
    Top = 375
  end
  object qryUseUnits: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     UseUnitID, UseUnitName'
      'FROM         UseUnits')
    Left = 775
    Top = 232
  end
  object qryCustomersGroup: TADOQuery
    Active = True
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 750
    Top = 185
  end
  object pdbplnmanage: TppDBPipeline
    DataSource = dsCustomersManag
    OpenDataSource = False
    UserName = 'pdbplnmanage'
    Left = 552
    Top = 456
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryCustomersOtherGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *  FROM CustomersOtherGroups'
      'WHERE CustID= :CustId')
    Left = 376
    Top = 320
    object qryCustomersOtherGroupsCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersOtherGroupsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object qryCustomersTypeInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CustID, LookUpIDKind, LookUpID, Amount, Note'
      'FROM   CustomersTypeInfo'
      'WHERE     (CustID = :CustID)')
    Left = 212
    Top = 326
    object qryCustomersTypeInfoPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryCustomersTypeInfoFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryCustomersTypeInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryCustomersTypeInfo_FormType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldKind = fkLookup
      FieldName = '_FormType'
      LookupKeyFields = 'FormType'
      LookupResultField = 'FormCaption_L1'
      KeyFields = 'FormType'
      Size = 200
      Lookup = True
    end
    object qryCustomersTypeInfo_FormInfoID: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_FormInfoID'
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID'
      Size = 200
      Lookup = True
    end
  end
  object srcCustomersTypeInfo: TDataSource
    DataSet = qryCustomersTypeInfo
    Left = 348
    Top = 120
  end
  object qryLookUpKind: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        LookUpID, Name'
      'FROM            LookUps'
      'WHERE        (Kind = 0)')
    Left = 221
    Top = 175
  end
  object srcCustomersActivityElective: TDataSource
    DataSet = qryCustomersActivityElective
    Left = 120
    Top = 256
  end
  object qryCustomersActivityElective: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = qryCustomersActivityElectiveBeforeOpen
    AfterInsert = qryCustomersActivityElectiveAfterInsert
    BeforeEdit = qryCustomersBrokerBeforeEdit
    BeforePost = qryCustomersBrokerBeforePost
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CustomerGrpID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersActivity'
      'WHERE     (PersonID1 = :CustID )'
      'AND        (SellsType IN'
      '                             (SELECT        SellsType'
      '                                FROM            SellsTypes'
      '                                WHERE        (IsElective = 1)))'
      
        'AND (  SellsType IN  (SELECT SellsType From dbo.CustomersGroupSe' +
        'llsTypeCodes( :CustomerGrpID )))'
      '')
    Left = 264
    Top = 236
    object IntegerField1: TIntegerField
      FieldName = 'PersonID1'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SellsType'
    end
    object StringField1: TStringField
      DisplayLabel = #1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = '_SellsType'
      LookupDataSet = qrySellsTypes
      LookupKeyFields = 'SellsType'
      LookupResultField = 'SellsTypeName'
      KeyFields = 'SellsType'
      Required = True
      Size = 200
      Lookup = True
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SellsCode'
      OnGetText = qryCustomersActivitySellsCodeGetText
    end
    object StringField2: TStringField
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578
      FieldKind = fkLookup
      FieldName = '_SellsCode'
      LookupDataSet = qrySellsInfo
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'SellsCode'
      Size = 200
      Lookup = True
    end
    object qryCustomersActivityElectiveElective: TBooleanField
      DisplayLabel = #1601#1593#1575#1604'/'#1594#1740#1585#1601#1593#1575#1604
      FieldName = 'Elective'
    end
    object qryCustomersActivityElectiveActivityNote: TWideStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'ActivityNote'
      Size = 200
    end
  end
end

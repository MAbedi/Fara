object mainF: TmainF
  AlignWithMargins = True
  Left = 343
  Top = 193
  BiDiMode = bdRightToLeft
  Caption = #1587#1740#1587#1578#1605' '#1740#1705#1662#1575#1585#1670#1607' '#1601#1585#1575
  ClientHeight = 628
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = Mnu24Maneger
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mdiChildrenTabs: TTabSet
    Left = 0
    Top = 577
    Width = 1042
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Style = tsModernTabs
    UnselectedColor = clHighlight
    Visible = False
    OnChange = mdiChildrenTabsChange
    ExplicitTop = 597
  end
  object Panel1: TPanel
    Left = 0
    Top = 598
    Width = 1042
    Height = 30
    ParentCustomHint = False
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdRightToLeft
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    ExplicitTop = 618
    object statMain: TsStatusBar
      Left = 0
      Top = 0
      Width = 1042
      Height = 30
      Align = alClient
      Panels = <
        item
          Style = psOwnerDraw
          Width = 50
        end
        item
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Text = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
          Width = 600
        end
        item
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Width = 150
        end
        item
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Text = #1606#1575#1605' '#1603#1575#1585#1576#1585': '#1603#1575#1585#1576#1585'1'
          Width = 300
        end
        item
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Width = 50
        end
        item
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Width = 200
        end>
      OnDblClick = statMainDblClick
      OnDrawPanel = statMainDrawPanel
    end
    object sSkinSelector1: TsSkinSelector
      Tag = 6
      AlignWithMargins = True
      Left = 10
      Top = 0
      Width = 119
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      ParentBiDiMode = False
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.Caption = 'Skin name:'
      ItemMargin = 8
      ColCount = 4
      ThumbSize = tsMedium
    end
  end
  object Mnu0Coffer: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 99
    Top = 35
    object vjMenuCoffer: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem2: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        Hint = '1'
        OnClick = CofferFormTypesF0Click
      end
      object N130: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object N84: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object mnuN181: TMenuItem
        Caption = '-'
      end
      object mnuGeneralReportF: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object mnuN180: TMenuItem
        Caption = '-'
      end
    end
    object MenuItem7: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object mnuGetFirstEntity: TMenuItem
        Caption = #1575#1606#1578#1602#1575#1604' '#1605#1608#1580#1608#1583#1610' '#1575#1608#1604' '#1583#1608#1585#1607' '
        OnClick = Mnu_GetFirstEntityFClick
      end
      object N73: TMenuItem
        Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = mniRemainEarlyFClick
      end
      object MenuItem14: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object N95: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610#1607#1575' '
        Hint = '1'
        OnClick = N95Click
      end
      object GetAllReciptFromExlF1: TMenuItem
        Caption = #1583#1585#1740#1575#1601#1578' '#1601#1585#1605' '#1607#1575#1740' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740' '#1575#1586' Excel'
        OnClick = GetAllReciptFromExlF1Click
      end
      object MenuItem23: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object SMS2: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
        OnClick = SMServiceFEnter1Click
      end
      object N218: TMenuItem
        Caption = '-'
      end
      object actCntContractsF1: TMenuItem
        Action = mdiMainF.actCallOtherNationalCode
      end
    end
    object MenuItem24: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object MenuItem31: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1581#1587#1575#1576' '#1607#1575'  '
        OnClick = CustGroupsF0Click
      end
      object N150: TMenuItem
        Caption = '-'
      end
      object MenuItem33: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1576#1575#1606#1603#1607#1575
        HelpContext = 1
        Hint = 'ValidGroupType'
        OnClick = CompanyBankAccountsF0Click
      end
      object MenuItem34: TMenuItem
        Tag = 2
        Caption = #1605#1593#1585#1601#1610' '#1589#1606#1583#1608#1602#1583#1575#1585
        HelpContext = 2
        Hint = 'ValidGroupType'
        OnClick = CashiersF0Click
      end
      object MnuCustomers17: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1740' '#1705#1575#1585#1662#1585#1583#1575#1586#1575#1606' '
        OnClick = CashiersF0Click
      end
      object OtherCustomerF7: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1578#1587#1607#1610#1604#1575#1578' '#1583#1607#1606#1583#1711#1575#1606
        HelpContext = 7
        Hint = 'ValidGroupType'
        OnClick = OtherCustomerF7Click
      end
      object N148: TMenuItem
        Caption = '-'
      end
      object N405: TMenuItem
        Tag = 30
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1585#1586
        OnClick = mniFormDesignFClick
      end
      object N406: TMenuItem
        Tag = 31
        Caption = #1579#1576#1578' '#1606#1585#1582' '#1585#1608#1586#1575#1606#1607' '#1575#1585#1586
        OnClick = mniFormDesignFClick
      end
      object N88: TMenuItem
        Caption = '-'
      end
      object MenuItem13: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1670#1575#1662' &'#1670#1603' '
        Hint = '1'
        OnClick = RptChecks4PrintF0Click
      end
    end
    object MItemCoffer1: TMenuItem
      Tag = 7
      Caption = #1608#1580#1607' '#1606#1602#1583
      object mnuActGetOtherMoneyF1: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetOtherMoneyF1
      end
      object mnuActGetOtherMoneyF2: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetOtherMoneyF2
      end
      object MenuItem191: TMenuItem
        Tag = 1
        Caption = #1580#1575#1576#1580#1575#1610#1610' '#1608#1580#1608#1607' '#1576#1610#1606' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575' '
        OnClick = GetOtherMoneyF3Click
      end
      object MenuItem192: TMenuItem
        Caption = '-'
      end
      object mnuRptCofferF: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1583#1585#1610#1575#1601#1578' '#1608#1580#1607' '#1606#1602#1583
        OnClick = RptCofferF1Click
      end
      object MenuItem194: TMenuItem
        Tag = 2
        Caption = #1604#1610#1587#1578' '#1662#1585#1583#1575#1582#1578' '#1608#1580#1607' '#1606#1602#1583
        OnClick = RptCofferF1Click
      end
      object MenuItem195: TMenuItem
        Tag = 3
        Caption = #1604#1610#1587#1578' '#1580#1575#1576#1580#1575#1610#1610' '#1608#1580#1608#1607' '#1576#1610#1606' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575' '
        OnClick = RptCofferF1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object MenuItem246: TMenuItem
        Caption = #1578#1606#1582#1608#1575#1607
        OnClick = PaymentCashFClick
      end
      object RptCofferF103: TMenuItem
        Tag = 103
        Caption = #1604#1610#1587#1578' '#1578#1606#1582#1608#1575#1607
        OnClick = RptCofferF1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object PaymentExpenceF: TMenuItem
        Caption = #1605#1580#1608#1586' '#1662#1585#1583#1575#1582#1578
        OnClick = PaymentExpenceFClick
      end
    end
    object MItemCoffer2: TMenuItem
      Caption = #1583#1585#1610#1575#1601#1578' '#1670#1603' '#1608' '#1587#1601#1578#1607
      object mnuActGetCheckF10: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetCheckF10
      end
      object mnuActGetCheckF11: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetCheckF11
      end
      object MenuItem199: TMenuItem
        Tag = 1
        Caption = #1608#1589#1608#1604' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1576#1575#1606#1603' '
        OnClick = GetCheckF13Click
      end
      object MenuItem200: TMenuItem
        Tag = 1
        Caption = #1576#1585#1711#1588#1578' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1576#1575#1606#1603' '
        OnClick = GetCheckF17Click
      end
      object GetCheckF23: TMenuItem
        Caption = #1608#1589#1608#1604' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610
        OnClick = GetCheckF23Click
      end
      object GetCheckF19: TMenuItem
        Caption = #1608#1575#1711#1584#1575#1585' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610' '#1576#1607' '#1576#1575#1606#1603
        OnClick = GetCheckF19Click
      end
      object MenuItem201: TMenuItem
        Caption = '-'
      end
      object MenuItem202: TMenuItem
        Tag = 10
        Caption = #1604#1610#1587#1578' '#1583#1585#1610#1575#1601#1578' '#1670#1603' '
        OnClick = RptCofferF1Click
      end
      object MenuItem203: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1608#1575#1711#1584#1575#1585' '#1670#1603' '#1576#1607' '#1576#1575#1606#1603' '
        OnClick = RptCofferF1Click
      end
      object MenuItem204: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1576#1575#1606#1603' '
        OnClick = RptCofferF13Click
      end
      object MenuItem205: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1576#1585#1711#1588#1578' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1576#1575#1606#1603' '
        OnClick = RptCofferF17Click
      end
      object RptCofferF23: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610
        OnClick = RptCofferF23Click
      end
      object RptCofferF19: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608#1575#1711#1584#1575#1585' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610' '#1576#1607' '#1576#1575#1606#1603
        OnClick = RptCofferF19Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object GetCheckF21: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = GetCheckF21Click
      end
      object GetCheckF22: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1606#1586#1583'  '#1576#1575#1606#1603' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = GetCheckF22Click
      end
      object l1: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = l1Click
      end
    end
    object MItemCoffer3: TMenuItem
      Caption = #1589#1583#1608#1585'  '#1670#1603
      object mnuActGetCheckF50: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetCheckF50
      end
      object MenuItem238: TMenuItem
        Tag = 1
        Caption = #1576#1585#1711#1588#1578' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = GetCheckF52Click
      end
      object MenuItem239: TMenuItem
        Tag = 1
        Caption = #1576#1585#1583#1575#1588#1578'  '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = GetCheckF51Click
      end
      object MenuItem240: TMenuItem
        Tag = 1
        Caption = #1575#1576#1591#1575#1604' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = GetCheckF53Click
      end
      object GetCheckF54: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1606#1586#1583' '#1605#1588#1578#1585#1610#1575#1606'- '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = GetCheckF54Click
      end
      object MenuItem241: TMenuItem
        Caption = '-'
      end
      object MenuItem242: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1589#1583#1608#1585' '#1670#1603' '
        OnClick = RptCofferF50Click
      end
      object MenuItem243: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1576#1585#1583#1575#1588#1578'  '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = RptCofferF51Click
      end
      object MenuItem244: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1576#1585#1711#1588#1578' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = RptCofferF52Click
      end
      object MenuItem245: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1575#1576#1591#1575#1604' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '
        OnClick = RptCofferF53Click
      end
      object RptCofferF54: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1606#1586#1583' '#1605#1588#1578#1585#1610#1575#1606'- '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = RptCofferF54Click
      end
    end
    object MItemCoffer4: TMenuItem
      Caption = #1601#1740#1588' '#1608' '#1581#1608#1575#1604#1607
      object MenuItem207: TMenuItem
        Tag = 1
        Caption = #1601#1610#1588' '#1608' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1576#1575#1606#1603#1610
        OnClick = GetOtherMoneyF90Click
      end
      object MenuItem208: TMenuItem
        Tag = 1
        Caption = #1587#1575#1610#1585' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1576#1575#1606#1603#1610
        OnClick = GetOtherMoneyF91Click
      end
      object MenuItem209: TMenuItem
        Caption = '-'
      end
      object MenuItem210: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1601#1610#1588' '#1608' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1576#1575#1606#1603#1610
        OnClick = RptCofferF90Click
      end
      object MenuItem211: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1587#1575#1610#1585' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1576#1575#1606#1603#1610
        OnClick = RptCofferF91Click
      end
      object N74: TMenuItem
        Caption = '-'
      end
      object GetOtherMoneyF101: TMenuItem
        Caption = '&'#1575#1593#1604#1575#1605#1610#1607' -'#1576#1583#1607#1603#1575#1585
        OnClick = GetOtherMoneyF101Click
      end
      object GetOtherMoneyF102: TMenuItem
        Caption = '&'#1575#1593#1604#1575#1605#1610#1607'- '#1576#1587#1578#1575#1606#1603#1575#1585
        OnClick = GetOtherMoneyF102Click
      end
      object N75: TMenuItem
        Caption = '-'
      end
      object RptCofferF101: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1575#1593#1604#1575#1605#1610#1607' '#1576#1583#1607#1603#1575#1585
        OnClick = RptCofferF101Click
      end
      object RptCofferF102: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1575#1593#1604#1575#1605#1610#1607' '#1576#1587#1578#1575#1606#1603#1575#1585
        OnClick = RptCofferF102Click
      end
    end
    object MItemCoffer5: TMenuItem
      Caption = #1578#1590#1605#1610#1606#1575#1578
      object MenuItem213: TMenuItem
        Caption = #1589#1583#1608#1585' '#1670#1603' '#1578#1590#1605#1610#1606#1610
        OnClick = GetCheckF70Click
      end
      object MenuItem214: TMenuItem
        Caption = #1593#1608#1583#1578' '#1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1589#1575#1583#1585#1607
        OnClick = GetCheckF71Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MenuItem215: TMenuItem
        Caption = #1583#1585#1610#1575#1601#1578' '#1670#1603' '#1578#1590#1605#1610#1606#1610
        OnClick = GetCheckF80Click
      end
      object MenuItem216: TMenuItem
        Caption = #1593#1608#1583#1578' '#1670#1603' '#1578#1590#1605#1610#1606#1610' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = GetCheckF81Click
      end
      object MenuItem217: TMenuItem
        Caption = #1608#1589#1608#1604' '#1670#1603' '#1578#1590#1605#1610#1606#1610' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = GetCheckF82Click
      end
      object N67: TMenuItem
        Caption = '-'
      end
      object GetCheckF73: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1606#1586#1583'  '#1588#1585#1603#1578' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = GetCheckF73Click
      end
      object AllGetCheckClick: TMenuItem
        Tag = 74
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1589#1575#1583#1585#1607' '#1606#1586#1583' '#1605#1588#1578#1585#1610#1575#1606'-'#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = AllGetCheckClickClick
      end
      object MenuItem218: TMenuItem
        Caption = '-'
      end
      object MenuItem219: TMenuItem
        Caption = #1604#1610#1587#1578' '#1589#1583#1608#1585' '#1670#1603' '#1578#1590#1605#1610#1606#1610
        OnClick = RptCofferF70Click
      end
      object MenuItem220: TMenuItem
        Caption = #1604#1610#1587#1578' '#1583#1585#1610#1575#1601#1578'  '#1670#1603' '#1578#1590#1605#1610#1606#1610' - '#1589#1575#1583#1585#1607' '
        OnClick = RptCofferF71Click
      end
      object N69: TMenuItem
        Caption = '-'
      end
      object MenuItem221: TMenuItem
        Caption = #1604#1610#1587#1578' '#1583#1585#1610#1575#1601#1578' '#1670#1603' '#1578#1590#1605#1610#1606#1610
        OnClick = RptCofferF80Click
      end
      object MenuItem222: TMenuItem
        Caption = #1604#1610#1587#1578' '#1593#1608#1583#1578' '#1670#1603' '#1578#1590#1605#1610#1606#1610' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = RptCofferF81Click
      end
      object MenuItem223: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1670#1603' '#1578#1590#1605#1610#1606#1610' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = RptCofferF82Click
      end
    end
    object MItemCoffer6: TMenuItem
      Caption = #1587#1575#1610#1585' '#1593#1605#1604#1610#1575#1578' '#1670#1603
      object N115: TMenuItem
        Caption = #1593#1608#1583#1578' '#1670#1603' '#1583#1585#1610#1575#1601#1578#1610' '#1576#1607' '#1605#1588#1578#1585#1610
        OnClick = N115Click
      end
      object mnuGetCheckF26: TMenuItem
        Action = mdiMainF.actGetCheckF26
      end
      object GetCheckF27: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610
        OnClick = GetCheckF27Click
      end
      object N54: TMenuItem
        Caption = '-'
      end
      object mnuActGetCheckF12: TMenuItem
        Tag = 1
        Action = mdiMainF.ActGetCheckF12
      end
      object MenuItem226: TMenuItem
        Tag = 1
        Caption = #1608#1589#1608#1604' '#1605#1587#1578#1602#1610#1605' '#1670#1603' '#1578#1608#1587#1591' '#1589#1606#1583#1608#1602
        OnClick = GetCheckF14Click
      end
      object MenuItem227: TMenuItem
        Tag = 1
        Caption = #1580#1575#1576#1580#1575#1610#1610' '#1670#1603#1607#1575' '#1576#1610#1606' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575' '
        OnClick = GetCheckF15Click
      end
      object MenuItem228: TMenuItem
        Tag = 1
        Caption = #1608#1589#1608#1604' '#1587#1575#1610#1585' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610
        OnClick = GetCheckF16Click
      end
      object mnuGetCheckF18: TMenuItem
        Tag = 1
        Action = mdiMainF.actGetCheckF18
      end
      object GetCheckFenter31: TMenuItem
        Caption = #1608#1589#1608#1604' '#1670#1603' '#1576#1585#1711#1588#1578#1610' '#1578#1581#1608#1610#1604#1610' '#1576#1607' '#1605#1588#1578#1585#1610
        OnClick = GetCheckFenter31Click
      end
      object GetCheckF28: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1605#1588#1578#1585#1610' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = GetCheckF28Click
      end
      object MenuItem230: TMenuItem
        Caption = '-'
      end
      object N116: TMenuItem
        Caption = #1604#1610#1587#1578' '#1601#1585#1605#1607#1575#1610' '#1593#1608#1583#1578' '#1670#1603#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610' '
      end
      object N214: TMenuItem
        Caption = #1604#1610#1587#1578' '#1593#1608#1583#1578' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610
        OnClick = N214Click
      end
      object RptCofferF27: TMenuItem
        Caption = #1604#1610#1587#1578' '#1587#1608#1575#1576#1602' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610
        OnClick = RptCofferF27Click
      end
      object N60: TMenuItem
        Caption = '-'
      end
      object MenuItem231: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1608#1575#1711#1584#1575#1585' '#1670#1603' '#1576#1607' '#1605#1588#1578#1585#1610
        OnClick = RptCofferF12Click
      end
      object MenuItem232: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1605#1587#1578#1602#1610#1605' '#1670#1603' '#1578#1608#1587#1591' '#1589#1606#1583#1608#1602
        OnClick = RptCofferF14Click
      end
      object MenuItem233: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1580#1575#1576#1580#1575#1610#1610' '#1670#1603#1607#1575' '#1576#1610#1606' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575' '
        OnClick = RptCofferF15Click
      end
      object MenuItem234: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1587#1575#1610#1585' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610
        OnClick = RptCofferF16Click
      end
      object MenuItem235: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1576#1585#1711#1588#1578' '#1587#1575#1610#1585' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610
        OnClick = RptCofferF18Click
      end
      object RptCofferF31: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608#1589#1608#1604' '#1670#1603' '#1576#1585#1711#1588#1578#1610' '#1578#1581#1608#1610#1604#1610' '#1576#1607' '#1605#1588#1578#1585#1610
        OnClick = RptCofferF31Click
      end
      object RptCofferF28: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1605#1588#1578#1585#1610' - '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = RptCofferF28Click
      end
    end
    object MItemCoffer8: TMenuItem
      Caption = #1578#1587#1607#1610#1604#1575#1578
      object mnurptLoanF: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605' '#1583#1575#1610#1606#1575#1605#1610#1603' '#1575#1590#1575#1601#1607' '#1605#1610' '#1588#1608#1583
        OnClick = mnurptLoanFClick
      end
    end
    object MenuItem247: TMenuItem
      Tag = 7
      Caption = #1578#1585#1575#1586' '#1593#1605#1604#1603#1585#1583' '#1608' '#1583#1601#1575#1578#1585
      object MenuItem248: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1606#1602#1583#1610#1606#1711#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602' '#1608' '#1576#1575#1606#1603#1607#1575
        OnClick = rptBalanceCofferF0Click
      end
      object mnuCashReport: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1583#1740#1585#1740#1578' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1606#1602#1583#1740#1606#1711#1740
        OnClick = mnuCashReportClick
      end
      object N70: TMenuItem
        Caption = '-'
      end
      object rptCofferTransF1: TMenuItem
        Tag = 1
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1589#1606#1583#1608#1602'/'#1578#1606#1582#1608#1575#1607' '#1711#1585#1583#1575#1606
        OnClick = rptCofferTransF1Click
      end
      object rptCofferTransF2: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1607#1575' '
        OnClick = rptCofferTransF2Click
      end
      object rptCofferTransF4: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1606#1610' '
        OnClick = rptCofferTransF4Click
      end
      object rptCofferTransF3: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1575#1587#1606#1575#1583' '#1583#1585#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
        OnClick = rptCofferTransF3Click
      end
      object rptCofferTransF11: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1575#1587#1606#1575#1583' '#1576#1585#1711#1588#1578#1610
        OnClick = rptCofferTransF11Click
      end
      object rptCofferTransF5: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1575#1587#1606#1575#1583' '#1578#1590#1610#1605#1610#1606#1610
        OnClick = rptCofferTransF5Click
      end
      object N327: TMenuItem
        Caption = '-'
      end
      object rptCofferTransF16: TMenuItem
        Tag = 109
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1587#1607#1610#1604#1575#1578' '#1583#1585#1610#1575#1601#1578#1610
        OnClick = rptCofferTransF1Click
      end
      object rptCofferTransF17: TMenuItem
        Tag = 110
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1587#1607#1610#1604#1575#1578' '#1662#1585#1583#1575#1582#1578#1610
        OnClick = rptCofferTransF1Click
      end
      object mnurptCustomersBalance20: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1662#1740#1588' '#1576#1740#1606#1740' '#1606#1602#1583#1740#1606#1711#1740
        OnClick = mnurptCustomersBalance2FClick
      end
      object mnuCashReport2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1583#1740#1585#1740#1578' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1606#1602#1583#1740#1606#1711#1740'2'
        OnClick = mnuCashReport2Click
      end
    end
    object N16: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
      object mnuRptChecksInF10: TMenuItem
        Action = mdiMainF.actRptChecksInF10
      end
      object MenuItem259: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1576#1575#1606#1603' '
        OnClick = RptChecksInF17Click
      end
      object mnuRptChecksInF17: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
        OnClick = mnuRptChecksInF17Click
      end
      object RptChecksInF80: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
        OnClick = RptChecksInF80Click
      end
      object RptChecksInF70: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1589#1575#1583#1585#1607' '#1606#1586#1583' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = RptChecksInF70Click
      end
      object N217: TMenuItem
        Caption = '-'
      end
      object MnuRptChecksInF50: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' _ '#1576#1585#1583#1575#1588#1578' '#1606#1588#1583#1607' '#1575#1586' '#1576#1575#1606#1603
        OnClick = MnuRptChecksInF50Click
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object mnuCheckInFormsF10: TMenuItem
        Action = mdiMainF.actrptCheckInFormsF10
      end
      object mnuCheckInFormsF13: TMenuItem
        Action = mdiMainF.actrptCheckInFormsF13
      end
      object mnuAllCheckInFormsF: TMenuItem
        Tag = 12
        Caption = #1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = mnuAllCheckInFormsFClick
      end
      object mnuCheckInFormsF50: TMenuItem
        Action = mdiMainF.actrptCheckInFormsF50
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuAllCheckInFormsF17: TMenuItem
        Tag = 17
        Caption = #1576#1585#1711#1588#1578' '#1670#1705' '#1607#1575#1740' '#1608#1575#1711#1584#1575#1585' '#1576#1607' '#1576#1575#1606#1705
        OnClick = mnuAllCheckInFormsFClick
      end
      object mnuRptChecksInF26: TMenuItem
        Action = mdiMainF.actRptChecksInF26
      end
      object AllRptChecksInF: TMenuItem
        Tag = 19
        Caption = #1608#1575#1711#1584#1575#1585#1610' '#1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610'  '#1576#1607' '#1576#1575#1606#1603
        OnClick = AllRptChecksInFClick
      end
      object N336: TMenuItem
        Tag = 1700
        Caption = #1670#1705#1607#1575#1740' '#1576#1585#1711#1588#1578#1740' '#1608#1575#1711#1584#1575#1585' '#1588#1583#1607' '#1576#1607' '#1576#1575#1606#1705
        OnClick = AllRptChecksInFClick
      end
      object N484: TMenuItem
        Tag = 183
        Caption = #1670#1705' '#1607#1575#1740' '#1608#1575#1711#1584#1575#1585' '#1576#1607' '#1608#1575#1581#1583' '#1581#1602#1608#1602#1740
        OnClick = AllRptChecksInFClick
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mnuCofferGeneralReport1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        OnClick = mnuCofferGeneralReport1Click
      end
      object mnusearchCheckF: TMenuItem
        Action = mdiMainF.actsearchCheckF
      end
      object N326: TMenuItem
        Caption = '-'
      end
      object N328: TMenuItem
        Tag = 109
        Caption = #1711#1586#1575#1585#1588' '#1575#1602#1587#1575#1591' '#1608#1575#1605#1607#1575#1610' '#1662#1585#1583#1575#1582#1578' '#1606#1588#1583#1607
        OnClick = mnuAllCheckInFormsFClick
      end
      object N329: TMenuItem
        Tag = 110
        Caption = #1711#1586#1575#1585#1588' '#1575#1602#1587#1575#1591' '#1608#1575#1605#1607#1575#1610' '#1583#1585#1610#1575#1601#1578' '#1606#1588#1583#1607
        OnClick = mnuAllCheckInFormsFClick
      end
      object N325: TMenuItem
        Caption = '-'
      end
      object mnuCofferTransAllF: TMenuItem
        Tag = 2
        Caption = #1711#1586#1575#1585#1588' '#1606#1602#1583#1740#1606#1711#1740' '#1585#1608#1586#1575#1606#1607' '#1740' '#1576#1575#1606#1705#1607#1575
        OnClick = mnuCofferTransAllFClick
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object rptcheckSadereh_StateF: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1576#1575#1606#1603#1607#1575
        OnClick = rptcheckSadereh_StateFClick
      end
      object mnuCheckCycleF: TMenuItem
        Action = mdiMainF.actCheckCycleF
      end
      object N98: TMenuItem
        Caption = '-'
      end
      object N99: TMenuItem
        Caption = #1589#1608#1585#1578' '#1608#1590#1593#1610#1578' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578' '#1607#1585' '#1605#1588#1578#1585#1610' '
        OnClick = rptCustomerCashtracsacionF0Click
      end
      object TrptCashier: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1606#1602#1583#1610#1606#1711#1610' '#1589#1606#1583#1608#1602
        OnClick = TrptCashierClick
      end
      object N482: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610#1575#1606' '#1576#1575' '#1575#1587#1606#1575#1583' '#1570#1606#1607#1575
        OnClick = mnurptCustomersBalance2FClick
      end
      object N486: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610#1575#1606' '
        ShortCut = 16473
        OnClick = rptCustomerTransactionF1Click
      end
      object N487: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
    end
    object Bsell_Coffer_OtherRpt: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem269: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object N345: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object N349: TMenuItem
        Caption = '-'
      end
      object MenuItem8: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem271: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object N346: TMenuItem
        Action = mdiMainF.actChangePass
      end
      object N429: TMenuItem
        Caption = #1575#1593#1604#1575#1606' '#1576#1607' '#1705#1575#1585#1576#1585' '#1583#1585' '#1608#1585#1608#1583' '#1576#1607' '#1587#1740#1587#1578#1605' '#1608' '#1662#1740#1575#1605#1705
        ShortCut = 16462
        OnClick = actOperatorNotificationFExecute
      end
      object N96: TMenuItem
        Caption = '-'
      end
      object MenuItem270: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1705' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear01: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem272: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object oolbar1: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object N149: TMenuItem
        Caption = '-'
      end
      object MenuItem279: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem280: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem276: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem277: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem278: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object mnu5: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object mnu6: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object mnu7: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object mnu8: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object ileHorizontally1: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object mnu9: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object mnuHelp: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF1: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList1: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem281: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem282: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem283: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu2Store: TMainMenu
    Tag = 2
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 355
    Top = 35
    object vjMenuStore: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem286: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
    end
    object MenuItem290: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object N89: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object N11: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1606#1575#1608#1610#1606' '#1605#1608#1579#1585' '#1576#1585' '#1582#1585#1610#1583' '#1582#1575#1589
        Hint = '1'
        OnClick = N11Click
      end
      object N18: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object Mnu_GetFirstEntityF: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610'  '#1605#1608#1580#1608#1583#1610' '#1575#1608#1604' '#1583#1608#1585#1607' '
        Hint = '1'
        OnClick = Mnu_GetFirstEntityFClick
      end
      object mniRemainEarlyClick2: TMenuItem
        Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = mniRemainEarlyFClick
      end
      object mnuN177: TMenuItem
        Caption = '-'
      end
      object mnuRecallBranchF: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610#1607#1575' '
        Hint = '1'
        OnClick = mnuRecallBranchFClick
      end
      object Excel1: TMenuItem
        Caption = #1583#1585#1740#1575#1601#1578' '#1601#1585#1605' '#1607#1575#1740' '#1575#1606#1576#1575#1585' '#1608' '#1601#1585#1608#1588' '#1575#1586' Excel'
        OnClick = mnuExcel1Click
      end
      object N134: TMenuItem
        Action = mdiMainF.actUpdateInfoF
      end
      object N170: TMenuItem
        Caption = '-'
      end
      object mnuN169: TMenuItem
        Caption = #1575#1605#1603#1575#1606#1575#1578' '#1580#1575#1606#1576#1610
        object mniN165: TMenuItem
          Caption = #1587#1607#1605#1610#1607' '#1576#1606#1583#1610
          OnClick = mniN165Click
        end
        object mnuQuotaPostF: TMenuItem
          Action = mdiMainF.actQuotaPostF
        end
        object N231: TMenuItem
          Caption = '-'
        end
        object mniReciptsDeficitsPostAllF: TMenuItem
          Caption = #1579#1576#1578' '#1711#1585#1608#1607#1610' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
        end
        object mnuN170: TMenuItem
          Caption = '-'
        end
        object ExcelImport: TMenuItem
          Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' Excel'
          Visible = False
          OnClick = ExcelImportClick
        end
        object ExcelImportToTabel: TMenuItem
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1580#1583#1608#1604
          Visible = False
          OnClick = ExcelImportToTabelClick
        end
        object Xml1: TMenuItem
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' Xml'
          OnClick = Xml1Click
        end
        object mnuTRequestManagementF: TMenuItem
          Tag = 21
          Caption = #1605#1583#1740#1585#1740#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1575#1604#1575' '#1575#1586' '#1575#1606#1576#1575#1585
          OnClick = mnuTRequestManagementFClick
        end
        object N171: TMenuItem
          Caption = '-'
        end
        object mnuRptReciptsRegulatesF: TMenuItem
          Caption = #1604#1740#1587#1578' '#1578#1593#1583#1740#1604#1575#1578' '#1705#1575#1604#1575
          OnClick = mnuRptReciptsRegulatesFClick
        end
        object N435: TMenuItem
          Caption = #1578#1594#1740#1740#1585' '#1705#1583#1607#1575#1740' '#1605#1588#1578#1585#1740' '#1576#1607' '#1705#1583' '#1580#1583#1740#1583
          ShortCut = 16456
          OnClick = mnuChangeCustIDFClick
        end
      end
      object mnuN168: TMenuItem
        Caption = '-'
      end
      object N338: TMenuItem
        Tag = 10
        Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607#1610' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = mnuSomeChangeOrdersFClick
      end
      object F5040F1: TMenuItem
        Action = mdiMainF.actF5040F
      end
      object N388: TMenuItem
        Action = mdiMainF.actCustomersAlternativeF
      end
      object actMultiReport1: TMenuItem
        Action = mdiMainF.actMultiReport
      end
      object N398: TMenuItem
        Caption = '-'
      end
      object SMServiceFEnter1: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
        OnClick = SMServiceFEnter1Click
      end
    end
    object MenuItem307: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object MenuItem314: TMenuItem
        Tag = 2
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607' /'#1711#1610#1585#1606#1583#1607
        OnClick = CustGroupsF0Click
      end
      object mnuSellersF1: TMenuItem
        Action = mdiMainF.actSellersF
      end
      object N353: TMenuItem
        Action = mdiMainF.actSellersF10
      end
      object MenuItem319: TMenuItem
        Caption = '-'
      end
      object mnuUseUnitsNew: TMenuItem
        Tag = 22
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'*'
        OnClick = mnuOfficeCustomerFAllClick
      end
      object MenuItem320: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'X'
        OnClick = UseUnitsF0Click
      end
      object NUseOthers: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
        OnClick = NUseOthersClick
      end
    end
    object N380: TMenuItem
      Caption = #1705#1583#1740#1606#1711' '#1575#1606#1576#1575#1585' '#1608#1705#1575#1604#1575' '
      object MenuItem308: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem309: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuStuffGroupsAccessoryS1: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuStuffGroupsAccessoryS2: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory2
      end
      object mnuStuffGroups2FClick1: TMenuItem
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575'2'
        OnClick = mnuStuffGroups2FClick
      end
      object mnuCoding: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object mnuStuffCodingSpecialF: TMenuItem
        Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1582#1575#1589
        OnClick = mnuStuffCodingSpecialFClick
      end
      object MenuItem311: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
      object mnuLookUps2F: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      end
      object N297: TMenuItem
        Caption = #1580#1587#1578#1580#1608' '#1608' '#1585#1583#1610#1575#1576#1610' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
        OnClick = N297Click
      end
    end
    object mnuItemOther2: TMenuItem
      Tag = 8
      Caption = #1593#1605#1604#1610#1575#1578' '#1575#1606#1576#1575#1585
      object MenuItem325: TMenuItem
        Caption = #1578#1593#1585#1610#1601' &'#1605#1608#1580#1608#1583#1610' '#1575#1576#1578#1583#1575#1610' '#1583#1608#1585#1607' '
        OnClick = ReciptsF1Click
      end
      object N1: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1575#1608#1604' '#1583#1608#1585#1607' - '#1575#1590#1575#1601#1607
        OnClick = ReciptsF2Click
      end
      object N2: TMenuItem
        Caption = #1578#1593#1583#1610#1604' '#1575#1608#1604' '#1583#1608#1585#1607' - '#1603#1575#1607#1588
        OnClick = ReciptsF3Click
      end
      object N62: TMenuItem
        Caption = '-'
      end
      object mnuReciptsF4: TMenuItem
        Action = mdiMainF.actReciptsF4
      end
      object N114: TMenuItem
        Caption = #1583#1585#1582#1608#1575#1587#1578' '#1578#1608#1604#1610#1583' / '#1587#1601#1575#1585#1588' '#1587#1575#1582#1578
        OnClick = N114Click
      end
      object N52: TMenuItem
        Caption = '-'
      end
      object mnuRecipt: TMenuItem
        Action = mdiMainF.actRecipt
      end
      object mnuReject: TMenuItem
        Action = mdiMainF.actReject
      end
      object N94: TMenuItem
        Caption = '-'
      end
      object mnuMnuStuffToStoreF: TMenuItem
        Tag = 8
        Action = mdiMainF.actMnuStuffToStoreF
      end
      object mnuMnurptBuySpecialF: TMenuItem
        Action = mdiMainF.actMnurptBuySpecialF
      end
      object N61: TMenuItem
        Caption = '-'
      end
      object mnuRelease: TMenuItem
        Action = mdiMainF.actRelease
      end
      object mnuReciptsF14: TMenuItem
        Action = mdiMainF.actReciptsF14
      end
      object N59: TMenuItem
        Caption = '-'
      end
      object mnuActReciptsF13: TMenuItem
        Action = mdiMainF.ActReciptsF13
      end
      object mnuActReciptsF7: TMenuItem
        Action = mdiMainF.ActReciptsF7
      end
      object MenuItem365: TMenuItem
        Caption = '-'
      end
      object mnuActReciptsF10: TMenuItem
        Action = mdiMainF.ActReciptsF10
      end
      object N58: TMenuItem
        Caption = '-'
      end
      object MenuItem343: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1576#1585#1711' '#1578#1581#1608#1610#1604' '#1603#1575#1604#1575' '
        OnClick = Rpt001F4Click
      end
      object MenuItem344: TMenuItem
        Caption = '&'#1604#1610#1587#1578'-'#1585#1587#1610#1583' '#1603#1575#1604#1575
        OnClick = Rpt001F5Click
      end
      object MenuItem345: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1576#1585#1711#1588#1578' '#1603#1575#1604#1575' '#1576#1607' '#1575#1606#1576#1575#1585
        OnClick = Rpt001F6Click
      end
      object N64: TMenuItem
        Caption = '-'
      end
      object MenuItem347: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1582#1585#1608#1580#1610' '#1607#1575#1610' '#1575#1606#1576#1575#1585
        OnClick = Rpt001F11Click
      end
      object MenuItem349: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1576#1585#1711#1588#1578' '#1575#1586' &'#1582#1585#1610#1583' '#1608' '#1578#1608#1604#1610#1583
        OnClick = Rpt001F14Click
      end
      object N63: TMenuItem
        Caption = '-'
      end
      object MenuItem351: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1580#1575#1576#1580#1575#1610#1610' '#1603#1575#1604#1575' '#1576#1610#1606' '#1575#1606#1576#1575#1585#1607#1575'  - '#1589#1575#1583#1585#1607' '#1607#1575
        OnClick = Rpt001F13Click
      end
      object MenuItem352: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1580#1575#1576#1580#1575#1610#1610' '#1603#1575#1604#1575' '#1576#1610#1606' '#1575#1606#1576#1575#1585#1607#1575'  - '#1608#1575#1585#1583#1607' '#1607#1575
        OnClick = Rpt001F7Click
      end
    end
    object N20: TMenuItem
      Caption = #1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610
      object MenuItem364: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1605#1602#1575#1591#1593' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '
        OnClick = CountingF0Click
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object MenuItem360: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1588#1605#1575#1585#1588' '#1575#1608#1604' '
        OnClick = CountingItemsF1Click
      end
      object MenuItem361: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1588#1605#1575#1585#1588' '#1583#1608#1605
        OnClick = CountingItemsF2Click
      end
      object MenuItem362: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1588#1605#1575#1585#1588' '#1587#1608#1605' '
        OnClick = CountingItemsF3Click
      end
      object CountingItemsF20: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1588#1605#1575#1585#1588' '#1583#1608#1605' '#1582#1575#1589
        OnClick = CountingItemsF20Click
      end
      object N427: TMenuItem
        Caption = '-'
      end
      object mnurptCountingItemsCtrlF: TMenuItem
        Caption = #1604#1740#1587#1578' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1740' '#1608' '#1705#1606#1578#1585#1604#1740' '
        OnClick = mnurptCountingItemsCtrlFClick
      end
      object rptCountingItemsF1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1588#1605#1575#1585#1588' '#1575#1608#1604'  '#1608' '#1583#1608#1605' '
        OnClick = rptCountingItemsF1Click
      end
      object rptCountingItemsF2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1588#1605#1575#1585#1588' '#1583#1608#1605' '#1608' '#1587#1608#1605' '
        OnClick = rptCountingItemsF2Click
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object rptCountingItemsF3: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '
        OnClick = rptCountingItemsF3Click
      end
      object rptCompare_Count_EntityF: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1662#1575#1610#1575#1606' '#1583#1608#1585#1607
        OnClick = rptCompare_Count_EntityFClick
      end
      object mnuRptReportsF: TMenuItem
        Tag = 322
        Caption = #1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1606#1607#1575#1610#1610' '#1576#1575' '#1603#1587#1585' '#1608' '#1575#1590#1575#1601#1575#1578' '#1575#1606#1576#1575#1585'(322)'
        OnClick = mnuRptReportsFClick
      end
      object N57: TMenuItem
        Caption = '-'
      end
      object MenuItem419: TMenuItem
        Caption = #1670#1575#1662'  '#1576#1585' '#1670#1587#1576' '#1603#1575#1604#1575
        OnClick = PrintStuffLabelF0Click
      end
      object PrintCountingLabelF0: TMenuItem
        Caption = #1670#1575#1662' '#1576#1585#1711' '#1588#1605#1575#1585#1588' '
        OnClick = PrintCountingLabelF0Click
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object IMEI1: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1605#1575#1585#1588' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '#1582#1575#1589
        OnClick = IMEI1Click
      end
      object CreateMDIForm2TrptCompareCountEntityFrptCompareCountEntityFSelf1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1662#1575#1610#1575#1606' '#1583#1608#1585#1607' '#1582#1575#1589
        OnClick = CreateMDIForm2TrptCompareCountEntityFrptCompareCountEntityFSelf1Click
      end
    end
    object N65: TMenuItem
      Caption = #1605#1608#1580#1608#1583#1610' '#1608' '#1603#1575#1585#1583#1603#1587
      object mnuActRptCardexF1: TMenuItem
        Action = mdiMainF.ActRptCardexF1
      end
      object mnuActRptCardexF2: TMenuItem
        Action = mdiMainF.ActRptCardexF2
      end
      object mnuCardexSpecialinventory: TMenuItem
        Action = mdiMainF.actCardexSpecialinventory
      end
      object mnuRptControlCardexf: TMenuItem
        Tag = 1
        Caption = #1603#1575#1585#1583#1603#1587' '#1603#1606#1578#1585#1604#1610' '#1603#1604#1610#1607' '#1603#1575#1604#1575#1607#1575#1610' '#1575#1606#1576#1575#1585
        OnClick = mnuRptControlCardexfClick
      end
      object N409: TMenuItem
        Tag = 1
        Caption = #1603#1575#1585#1583#1603#1587' '#1603#1606#1578#1585#1604#1610' '#1603#1604#1610#1607' '#1603#1575#1604#1575#1607#1575#1610' '#1575#1606#1576#1575#1585' '#1576#1583#1608#1606' '#1583#1585' '#1606#1592#1585'  '#1711#1585#1601#1578#1606' '#1705#1575#1604#1575
        OnClick = N409Click
      end
      object N82: TMenuItem
        Caption = '-'
      end
      object N77: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575' - '#1576#1578#1601#1603#1610#1603' '#1575#1606#1576#1575#1585#1607#1575
        object MenuItem370: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585#1581#1587#1576' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = RptEntityStuffGrpF0Click
        end
        object mnuRptEntityStuffF: TMenuItem
          Action = mdiMainF.actRptEntityStuffF
        end
        object mnuEntityOnDetailStuffs: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610#1607#1575#1610' '#1582#1575#1589
          object MenuItem371: TMenuItem
            Caption = #1605#1608#1580#1608#1583#1610' '#1576#1578#1601#1603#1610#1603' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '
            OnClick = RptEntityStuffDetailsF0Click
          end
          object mnuEntityOnDetailStuffsF: TMenuItem
            Action = mdiMainF.actrptEntityOnDetailStuffsF
          end
          object N144: TMenuItem
            Caption = '-'
          end
          object N145: TMenuItem
            Caption = #1605#1608#1580#1608#1583#1610' '#1576#1578#1601#1603#1610#1603'  '#1585#1575#1607#1606#1605#1575'- '#1605#1602#1583#1575#1585#1610
            OnClick = N145Click
          end
        end
        object mnuActSpecialinventoryF: TMenuItem
          Action = mdiMainF.ActSpecialinventoryF
        end
        object mnuInventoryByBarcode: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1740' '#1576#1585' '#1581#1587#1576' '#1576#1575#1585#1705#1583
          OnClick = mnuInventoryByBarcodeClick
        end
      end
      object n1000: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575' - '#1603#1604#1610#1607' '#1575#1606#1576#1575#1585#1607#1575
        object RptEntityStuffGrpAllStore: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = RptEntityStuffGrpAllStoreClick
        end
        object RptEntityStuffAllStore: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1576#1578#1601#1603#1610#1603' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
          OnClick = RptEntityStuffAllStoreClick
        end
        object N140: TMenuItem
          Caption = '-'
        end
        object mnuRptControlEntity: TMenuItem
          Caption = #1711#1586#1575#1585#1588' '#1603#1606#1578#1585#1604#1610' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585#1607#1575
          OnClick = mnuRptControlEntityClick
        end
        object mnuEntityOnAllstore: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610#1607#1575#1610' '#1582#1575#1589
          object RptEntityStuffDetailsAllStoreF: TMenuItem
            Caption = #1605#1608#1580#1608#1583#1610' '#1576#1578#1601#1603#1610#1603' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578
            OnClick = RptEntityStuffDetailsAllStoreFClick
          end
          object rptEntityOnDetailStuffsAllStore: TMenuItem
            Caption = #1605#1608#1580#1608#1583#1610' '#1576#1578#1601#1603#1610#1603' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
            OnClick = rptEntityOnDetailStuffsAllStoreClick
          end
        end
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object MenuItem410: TMenuItem
        Caption = #1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1606#1607#1575#1610#1610' '#1575#1606#1576#1575#1585
        object N147: TMenuItem
          Caption = #1576#1585' '#1581#1587#1576' '#1603#1583' '#1603#1575#1604#1575
          OnClick = StuffTransactionF0Click
        end
        object N146: TMenuItem
          Caption = #1576#1585' '#1581#1587#1576' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = StuffGroupsTransactionClick
        end
        object N392: TMenuItem
          Caption = #1711#1585#1583#1588' '#1578#1580#1605#1740#1593#1740' '#1608' '#1705#1604#1740' '#1575#1606#1576#1575#1585#1607#1575
          OnClick = N392Click
        end
        object MnuStuffTransactionDateF: TMenuItem
          Caption = #1576#1585' '#1581#1587#1576' '#1603#1583' '#1603#1575#1604#1575' '#1576#1575' '#1601#1740#1604#1578#1585' '#1578#1575#1585#1740#1582
          OnClick = MnuStuffTransactionDateFClick
        end
      end
      object N48: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1582#1575#1589' '#1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585' '
        OnClick = N48Click
      end
      object N83: TMenuItem
        Caption = '-'
      end
      object mnuRptReportsF192: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1711#1585#1583#1588' '#1606#1607#1575#1610#1610' '#1575#1606#1576#1575#1585' '#1576#1578#1601#1603#1610#1603' '#1601#1585#1605
        OnClick = mnuRptReportsF192Click
      end
      object mnuRptCardex2F: TMenuItem
        Caption = #1603#1575#1585#1583#1603#1587' '#1705#1575#1604#1575
        OnClick = mnuRptCardex2FClick
      end
      object N488: TMenuItem
        Caption = #1603#1575#1585#1583#1603#1587' '#1603#1606#1578#1585#1604#1610' '#1603#1604#1610#1607' '#1603#1575#1604#1575#1607#1575#1610' '#1575#1606#1576#1575#1585'...'
        OnClick = N488Click
      end
    end
    object MenuItem367: TMenuItem
      Tag = 8
      Caption = '&'#1711#1586#1575#1585#1588#1575#1578#8207#1575#1606#1576#1575#1585
      object N101: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1608#1575#1585#1583#1607' '
        object mnirptStuffGroupsF2: TMenuItem
          Caption = #1608#1575#1585#1583#1607' - '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575#8207'...'#8207
        end
        object MnurptStuffCodingF2: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575'...'#8207
        end
        object mnuInStuf: TMenuItem
          Caption = #1608#1575#1585#1583#1607' - '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffF5Click
        end
        object MenuItem382: TMenuItem
          Caption = '-'
        end
        object mniStoRptReciptWithGrpCustF2: TMenuItem
          Caption = #1608#1575#1585#1583#1607' - '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' ...'#8207
        end
        object mniRptReciptWithCustF2: TMenuItem
          Caption = #1608#1575#1585#1583#1607' - '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object MnuRptReciptWithCustItemF2: TMenuItem
          Caption = #1608#1575#1585#1583#1607' - '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606' '#1570#1610#1578#1605'...'#8207
        end
      end
      object MenuItem385: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1589#1575#1583#1585#1607
        object mnirptStuffGroupsF4: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575'...'#8207
        end
        object MnurptStuffCodingF4: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
        end
        object mnuOutStuf1: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffF11Click
        end
        object MenuItem389: TMenuItem
          Caption = '-'
        end
        object mniStoRptReciptWithGrpCustF4: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' ...'
        end
        object mniRptReciptWithCustF4: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object MnuRptReciptWithCustItemF4: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606' '#1570#1610#1578#1605'...'#8207
        end
        object N79: TMenuItem
          Caption = '-'
        end
        object mnuOutStuf2: TMenuItem
          Caption = #1589#1575#1583#1585#1607' - '#1576#1578#1601#1603#1610#1603' '#1605#1588#1578#1585#1610' '#1608#1605#1583#1604
          OnClick = mnuOutStuf2Click
        end
      end
      object mnuFirstIn: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1610' '#1575#1608#1604'  '#1583#1608#1585#1607'_ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
        OnClick = rptFormsOnStuffF1Click
      end
      object MnuN166: TMenuItem
        Caption = '-'
      end
      object MnuN171: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1575#1585#1583#1607' '#1607#1575
        object MnurptReciptListOnStuffCode2: TMenuItem
          Tag = 5
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610
        end
        object MnurptReciptListOnStuffCodeCustomersItem2: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605' '
        end
        object MnuN175: TMenuItem
          Caption = '-'
        end
        object MnurptReciptListOnCustomersF2: TMenuItem
          Tag = 5
          Caption = ' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object MnurptReciptListOnCustomersItemF2: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606' '#1570#1610#1578#1605'...'#8207
        end
      end
      object MnuN172: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1589#1575#1583#1585#1607' '#1607#1575
        object MnurptReciptListOnStuffCode4: TMenuItem
          Tag = 5
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610
        end
        object MnurptReciptListOnStuffCodeCustomersItem4: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605' '
        end
        object MnuN121: TMenuItem
          Caption = '-'
        end
        object MnurptReciptListOnCustomersF4: TMenuItem
          Tag = 5
          Caption = ' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object MnurptReciptListOnCustomersItemF4: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606' '#1570#1610#1578#1605'...'#8207
        end
      end
      object MnuN122: TMenuItem
        Caption = '-'
      end
      object N121: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585' '#1608#1575#1585#1583#1607' '#1607#1575
        object MnurptReciptSumOnStuffCodeCustomersItemF2: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605
        end
        object MnurptReciptSumOnCustomersItemF2: TMenuItem
          Caption = #1576#1578#1601#1610#1603#1610#1603' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605
        end
        object mnurptReciptSumOnPersonID1F2: TMenuItem
          Caption = #1576#1578#1601#1610#1603#1610#1603' '#1605#1588#1578#1585#1610
        end
      end
      object MnuN1651: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585' '#1589#1575#1583#1585#1607' '#1607#1575
        object MnurptReciptSumOnStuffCodeCustomersItemF4: TMenuItem
          Caption = #1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605
        end
        object MnurptReciptSumOnCustomersItemF4: TMenuItem
          Caption = #1576#1578#1601#1610#1603#1610#1603' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605
        end
        object mnurptReciptSumOnPersonID1F4: TMenuItem
          Caption = #1576#1578#1601#1610#1603#1610#1603' '#1605#1588#1578#1585#1610
        end
      end
      object N206: TMenuItem
        Caption = '-'
      end
      object mnuGeneralReportF1: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object mnuRptOperationalFStore: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1575#1606#1576#1575#1585
        OnClick = mnuRptOperationalFStoreClick
      end
      object N229: TMenuItem
        Caption = '-'
      end
      object N141: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1589#1585#1601' '#1576#1607' '#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
        OnClick = rptUseUnitFClick
      end
      object N186: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1589#1585#1601' '#1576#1607' '#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' ('#1603#1604#1610')'#8207
        OnClick = rptGroupUseUnitFClick
      end
      object N225: TMenuItem
        Caption = #1578#1585#1575#1586' '#1605#1589#1585#1601' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
        OnClick = TarazGroupUseUnitClick
      end
      object N408: TMenuItem
        Action = mdiMainF.actrptMatrixBalance
      end
      object MenuItem427: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1607#1585' '#1603#1575#1604#1575
        OnClick = rptCustTrancDetailsStuffF0Click
      end
    end
    object N365: TMenuItem
      Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
      object N404: TMenuItem
        Tag = 9
        Caption = #1578#1585#1575#1586' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
      object N403: TMenuItem
        Tag = 9
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomerTransactionF1Click
      end
      object N393: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
      object N368: TMenuItem
        Action = mdiMainF.actSpecialAccDetailOnTopicBookF
      end
      object N366: TMenuItem
        Tag = 4
        Caption = #8207#1605#1575#1606#1583#1607#8207#1581#1587#1575#1576#8207#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
    end
    object MnuN173: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1582#1575#1589
      object mnuSPTrancService_Cust2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1578#1585#1610' 2'
        OnClick = TrancService_Cust2F0Click
      end
      object mnuSprptBalanceService: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1608#1585#1608#1583' '#1608#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1582#1583#1605#1575#1578' '#1583#1607#1606#1583#1711#1575#1606' '
        OnClick = rptBalanceServiceF0Click
      end
      object mnuSPrancstuffDetails: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1582#1585#1608#1580#1610' '#1603#1575#1604#1575#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575' '#1608' '#1575#1580#1586#1575#1569' '#1570#1606
        OnClick = rancstuffDetailsF11Click
      end
      object rptHavaleh: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        OnClick = rptHavalehClick
      end
      object mnuSearchRecipts1: TMenuItem
        Action = mdiMainF.actSearchRecipts
      end
      object MenuItem411: TMenuItem
        Caption = '-'
      end
      object rptTrancDetailsF5: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1585#1587#1610#1583' '#1603#1575#1604#1575
        OnClick = rptTrancDetailsF5Click
      end
      object mnuListUsesF: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1589#1585#1601
        OnClick = mnuListUsesFClick
      end
      object N304: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' ....'#8207
        object N307: TMenuItem
          Tag = 3
          Caption = #1587#1575#1610#1585' '#1587#1585#1601#1589#1604' '#1607#1575
          OnClick = AllrptCustomerTransactionF1Click
        end
        object N306: TMenuItem
          Tag = 4
          Caption = #1662#1603#1610#1606#1711' '#1601#1585#1608#1588#1606#1583#1607
          OnClick = AllrptCustomerTransactionF1Click
        end
        object N305: TMenuItem
          Tag = 11
          Caption = #1662#1585#1587#1606#1604
          OnClick = AllrptCustomerTransactionF1Click
        end
      end
      object N308: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1593#1605#1604#1603#1585#1583'  ....'#8207
        object mnuSpCustomerTransaction3: TMenuItem
          Tag = 3
          Caption = #1587#1575#1610#1585' '#1587#1585#1601#1589#1604' '#1607#1575
          OnClick = AllrptCustomerTrancItemsFClick
        end
        object mnuSpCustomerTransaction4: TMenuItem
          Tag = 4
          Caption = #1662#1603#1610#1606#1711' '#1601#1585#1608#1588#1606#1583#1607
          OnClick = AllrptCustomerTrancItemsFClick
        end
        object mnuSpCustomerTransaction11: TMenuItem
          Tag = 11
          Caption = #1662#1585#1587#1606#1604
          OnClick = AllrptCustomerTrancItemsFClick
        end
      end
    end
    object N377: TMenuItem
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      object MenuItem366: TMenuItem
        Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1582#1585#1608#1580#1610' '#1607#1575#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = CalculateOutPutF0Click
      end
      object N419: TMenuItem
        Tag = 1
        Caption = #1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578' '#1582#1585#1740#1583
        OnClick = ManifestoF0Click
      end
      object mniIncorporate: TMenuItem
        Caption = #1579#1576#1578' '#1603#1604#1610' '#1605#1576#1604#1594' '#1583#1585' '#1601#1585#1605#1607#1575
        OnClick = mniIncorporateClick
      end
      object mnuGeneralRegistrationF: TMenuItem
        Caption = #1579#1576#1578' '#1705#1604#1740' '#1583#1585' '#1601#1585#1605#1607#1575
        OnClick = mnuGeneralRegistrationFClick
      end
      object N175: TMenuItem
        Caption = #1579#1576#1578' '#1603#1585#1575#1610#1607' '#1581#1605#1604' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1587#1607#1610#1605#1610
        OnClick = N175Click
      end
      object mnuRptControlCardexf2: TMenuItem
        Tag = 2
        Caption = ' '#1579#1576#1578' '#1570#1605#1575#1585' '#1578#1608#1604#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1605#1608#1580#1608#1583#1610' '#1608' '#1601#1585#1608#1588' '
        OnClick = mnuRptControlCardexfClick
      end
      object mniChangeUnit: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1608#1575#1581#1583' '#1588#1605#1575#1585#1588' '#1608' '#1575#1593#1605#1575#1604' '#1590#1585#1610#1576' '#1576#1585#1575#1610' '#1605#1602#1583#1575#1585'  - '#1608#1586#1606
        OnClick = mniChangeUnitClick
      end
      object UpdateUnitSellPriceF1: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1601#1610' '#1608' '#1576#1607#1575#1610' '#1603#1604' '#1601#1585#1605' '#1607#1575#1610' '#1608#1585#1608#1583#1610
        OnClick = UpdateUnitSellPriceF1Click
      end
      object mnuSellPricingF: TMenuItem
        Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1601#1585#1608#1588
        OnClick = mnuSellPricingFClick
      end
    end
    object Bsell_Store_OtherReport: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem552: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object N330: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object N350: TMenuItem
        Caption = '-'
      end
      object MenuItem291: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem554: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object N351: TMenuItem
        Action = mdiMainF.actChangePass
      end
      object oolbar2: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object N431: TMenuItem
        Caption = #1575#1593#1604#1575#1606' '#1576#1607' '#1705#1575#1585#1576#1585' '#1583#1585' '#1608#1585#1608#1583' '#1576#1607' '#1587#1740#1587#1578#1605' '#1608' '#1662#1740#1575#1605#1705
        ShortCut = 16462
        OnClick = actOperatorNotificationFExecute
      end
      object N477: TMenuItem
        Caption = '-'
      end
      object MenuItem553: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear02: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem555: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnuN234: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem557: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem556: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem562: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem558: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem559: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem560: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem561: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object mnuArrange11: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object mnuCascade11: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object mnuClose11: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object mnuMinimizeAll11: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object mnuHorizontally21: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object mnuVertically11: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object mnuHelp1: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF2: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList2: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem564: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem565: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem566: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu1Sell: TMainMenu
    Tag = 1
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 227
    Top = 43
    object vjMenuSell: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem569: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object N131: TMenuItem
        Caption = '-'
        Hint = '1'
      end
    end
    object MenuItem573: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object N87: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem604: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578' '#1589#1608#1585#1578#1581#1587#1575#1576#1607#1575
        Hint = '1'
        OnClick = DeficitsF0Click
      end
      object MenuItem580: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnuN165: TMenuItem
        Caption = #1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1581#1587#1575#1576#1607#1575#1610' '#1608#1575#1587#1591' '#1583#1585' '#1601#1585#1608#1588
        OnClick = mnuN165Click
      end
      object MenuItem575: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object N387: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610#1607#1575' '
        Hint = '1'
        OnClick = mnuRecallBranchFClick
      end
      object mnuExcel1: TMenuItem
        Caption = #1583#1585#1740#1575#1601#1578' '#1601#1585#1605' '#1607#1575#1740' '#1575#1606#1576#1575#1585' '#1608' '#1601#1585#1608#1588' '#1575#1586' Excel'
        OnClick = mnuExcel1Click
      end
      object mnuReciptsImport: TMenuItem
        Caption = #1583#1585#1740#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1587#1575#1740#1585' '#1587#1740#1587#1578#1605#1607#1575
        OnClick = mnuReciptsImportClick
      end
      object N169: TMenuItem
        Caption = '-'
      end
      object mniRemainEarlyF: TMenuItem
        Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = mniRemainEarlyFClick
      end
      object N85: TMenuItem
        Caption = '-'
      end
      object SMS1: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
        OnClick = SMServiceFEnter1Click
      end
      object N337: TMenuItem
        Tag = 10
        Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607#1610' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = mnuSomeChangeOrdersFClick
      end
      object N400: TMenuItem
        Caption = '-'
      end
      object mnuExcelConflictF: TMenuItem
        Caption = #1605#1594#1575#1740#1585#1578' '
        OnClick = mnuExcelConflictFClick
      end
      object N185: TMenuItem
        Caption = '-'
      end
      object MenuItem578: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem590: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object MenuItem591: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem592: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuStuffGroupsAccessory1: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuStuffGroupsAccessory2: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory2
      end
      object mnuStuffGroups2F: TMenuItem
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575'2'
        OnClick = mnuStuffGroups2FClick
      end
      object mnuCoding1: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object mnuStuffCodingSpecialFSell: TMenuItem
        Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1582#1575#1589
        OnClick = mnuStuffCodingSpecialFClick
      end
      object MenuItem594: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
      object MenuItem596: TMenuItem
        Caption = '-'
      end
      object mnuCustomersF9: TMenuItem
        Action = mdiMainF.actCustomersF9
      end
      object mnuCustomers8: TMenuItem
        Action = mdiMainF.actCustomers8
      end
      object N364: TMenuItem
        Caption = '-'
      end
      object MnuSellsEmporiums: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1605#1585#1575#1603#1586' '#1601#1585#1608#1588
        OnClick = MnuSellsEmporiumsClick
      end
      object N184: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1606#1581#1608#1607' '#1601#1585#1608#1588' '
        OnClick = mniFormDesignFClick
      end
    end
    object MnuCustomers: TMenuItem
      Caption = #1662#1585#1608#1606#1583#1607' '#1605#1588#1578#1585#1740#1575#1606
      object MenuItem597: TMenuItem
        Tag = 1
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1582#1585#1740#1583#1575#1585#1575#1606' '
        OnClick = CustGroupsF0Click
      end
      object mnuActCustomersF2: TMenuItem
        Action = mdiMainF.ActCustomersF
      end
      object MnuCustomersProjectF: TMenuItem
        Tag = 23
        Caption = #1605#1593#1585#1601#1740' '#1662#1585#1608#1688#1607' '#1607#1575
        OnClick = MnuCustomersProjectFClick
      end
      object N178: TMenuItem
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
        object N180: TMenuItem
          Tag = 18
          Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
          OnClick = mniFormDesignFClick
        end
        object N181: TMenuItem
          Tag = 19
          Caption = #1578#1593#1585#1610#1601' '#1575#1606#1608#1575#1593' '#1662#1610#1575#1605' '#1576#1585#1575#1610' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = mniFormDesignFClick
        end
        object N182: TMenuItem
          Tag = 20
          Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = mniFormDesignFClick
        end
        object MnuN183: TMenuItem
          Tag = 21
          Caption = #1605#1593#1585#1601#1610' '#1605#1587#1610#1585#1607#1575
          OnClick = MnuN183Click
        end
        object N183: TMenuItem
          Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1570#1583#1585#1587' '#1607#1575
          OnClick = N183Click
        end
        object mnuZoneF: TMenuItem
          Caption = #1605#1593#1585#1601#1610' '#1575#1587#1578#1575#1606' '#1608' '#1588#1607#1585#1607#1575'('#1605#1575#1604#1610#1575#1578')'
          OnClick = mnuZoneFClick
        end
      end
      object N44: TMenuItem
        Action = mdiMainF.actCustomersAlternativeF
      end
      object mnuCustomersTaxF2: TMenuItem
        Action = mdiMainF.actCustomersTaxF
      end
      object N315: TMenuItem
        Tag = 58
        Caption = #1575#1585#1578#1576#1575#1591' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606
        OnClick = mniFormDesignFClick
      end
      object N309: TMenuItem
        Tag = 60
        Caption = #1575#1585#1578#1576#1575#1591' '#1705#1575#1585#1576#1585#1575#1606' '#1576#1575' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606
        OnClick = mniFormDesignFClick
      end
      object mnuCustomersInterView2: TMenuItem
        Action = mdiMainF.actCustomersInterView
      end
    end
    object mnuItemOther1: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1601#1585#1608#1588
      object ReciptsF1: TMenuItem
        Tag = 1
        Caption = #1578#1593#1585#1610#1601' &'#1605#1608#1580#1608#1583#1610' '#1575#1576#1578#1583#1575#1610' '#1583#1608#1585#1607' '
        OnClick = ReciptsF1Click
      end
      object ReciptsF2: TMenuItem
        Tag = 2
        Caption = #1578#1593#1583#1610#1604' '#1575#1608#1604' '#1583#1608#1585#1607' - '#1575#1590#1575#1601#1607
        OnClick = ReciptsF2Click
      end
      object ReciptsF3: TMenuItem
        Tag = 3
        Caption = #1578#1593#1583#1610#1604' '#1575#1608#1604' '#1583#1608#1585#1607' - '#1603#1575#1607#1588
        OnClick = ReciptsF3Click
      end
      object mnuReciptsF5: TMenuItem
        Action = mdiMainF.actReciptsF4
      end
      object mnuRecipt1: TMenuItem
        Action = mdiMainF.actRecipt
      end
      object mnuReject1: TMenuItem
        Action = mdiMainF.actReject
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object mnuActReciptsF14: TMenuItem
        Action = mdiMainF.ActReciptsF13
      end
      object mnuActReciptsF8: TMenuItem
        Action = mdiMainF.ActReciptsF7
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object mnuActReciptsF11: TMenuItem
        Action = mdiMainF.ActReciptsF10
      end
      object mnuRelease1: TMenuItem
        Action = mdiMainF.actRelease
      end
      object mnuSell_1: TMenuItem
        Action = mdiMainF.actSell
      end
      object mnuMnuContractF: TMenuItem
        Tag = 20
        Action = mdiMainF.actMnuContractF
      end
      object N53: TMenuItem
        Caption = '-'
      end
      object MenuItem626: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1576#1585#1711' '#1578#1581#1608#1610#1604' '#1603#1575#1604#1575' '
        OnClick = Rpt001F4Click
      end
      object MenuItem627: TMenuItem
        Caption = '&'#1604#1610#1587#1578'-'#1585#1587#1610#1583' '#1603#1575#1604#1575
        OnClick = Rpt001F5Click
      end
      object MenuItem628: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1576#1585#1711#1588#1578' '#1603#1575#1604#1575' '#1576#1607' '#1575#1606#1576#1575#1585
        OnClick = Rpt001F6Click
      end
      object MenuItem634: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1580#1575#1576#1580#1575#1610#1610' '#1603#1575#1604#1575' '#1576#1610#1606' '#1575#1606#1576#1575#1585#1607#1575'  - '#1589#1575#1583#1585#1607' '#1607#1575
        OnClick = Rpt001F13Click
      end
      object MenuItem635: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1580#1575#1576#1580#1575#1610#1610' '#1603#1575#1604#1575' '#1576#1610#1606' '#1575#1606#1576#1575#1585#1607#1575'  - '#1608#1575#1585#1583#1607' '#1607#1575
        OnClick = Rpt001F7Click
      end
      object N76: TMenuItem
        Caption = '-'
      end
      object MenuItem629: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1587#1601#1575#1585#1588' '#1605#1588#1578#1585#1610'- '#1585#1586#1585#1608' '#1603#1575#1604#1575
        OnClick = Rpt001F10Click
      end
      object MenuItem630: TMenuItem
        Caption = #1604#1610#1587#1578'- '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1601#1585#1608#1588
        OnClick = Rpt001F11Click
      end
      object MenuItem631: TMenuItem
        Caption = #1604#1610#1587#1578'-'#1589#1608#1585#1578#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1603#1575#1604#1575
        OnClick = Rpt001F12Click
      end
    end
    object N160: TMenuItem
      Caption = #1605#1583#1740#1585#1740#1578' '#1578#1602#1575#1590#1575
    end
    object N161: TMenuItem
      Caption = #1578#1608#1586#1740#1593' '#1608' '#1662#1582#1588
      object mnuSellPlanF: TMenuItem
        Action = mdiMainF.actSellPlanF
      end
      object mnuInvoiceEmissionF: TMenuItem
        Action = mdiMainF.actInvoiceEmissionF
      end
      object N162: TMenuItem
        Caption = #1593#1605#1604#1603#1585#1583' '#1578#1608#1586#1610#1593' '#1603#1606#1606#1583#1711#1575#1606
        OnClick = N162Click
      end
      object N287: TMenuItem
        Tag = 12
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1585#1610#1583' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = mnurptWorkCustomerFClick
      end
      object ReciptReleaseF12: TMenuItem
        Caption = #1578#1608#1586#1610#1593' '#1603#1575#1604#1575
        OnClick = ReciptReleaseF12Click
      end
      object mnuN167: TMenuItem
        Caption = #1575#1606#1608#1575#1593' '#1581#1587#1575#1576' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1662#1585#1587#1606#1604' '#1583#1585' '#1587#1610#1587#1578#1605' '#1583#1587#1578#1605#1586#1583
        OnClick = mnuN167Click
      end
      object mnurptWorkCustomerF: TMenuItem
        Tag = 11
        Caption = #1711#1586#1575#1585#1588' '#1581#1608#1575#1604#1607' '#1601#1585#1608#1588' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610' '#1608' '#1603#1575#1604#1575
        OnClick = mnurptWorkCustomerFClick
      end
      object mnuGroupReciptPostF: TMenuItem
        Caption = #1579#1576#1578' '#1601#1585#1605' '#1576#1575' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1583#1585#1582#1578#1740
        OnClick = mnuGroupReciptPostFClick
      end
      object N386: TMenuItem
        Caption = '-'
      end
      object mnuReviewOrders: TMenuItem
        Caption = #1576#1585#1585#1587#1740' '#1608' '#1606#1607#1575#1740#1740' '#1705#1585#1583#1606' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = mnuReviewOrdersClick
      end
    end
    object MItemCoffer7: TMenuItem
      Caption = #1587#1575#1610#1585' '#1593#1605#1604#1610#1575#1578
      object N56: TMenuItem
        Caption = #1575#1593#1604#1575#1605#1610#1607' '#1576#1583#1607#1603#1575#1585
        OnClick = N56Click
      end
      object N66: TMenuItem
        Caption = #1575#1593#1604#1575#1605#1610#1607' '#1576#1587#1578#1575#1606#1603#1575#1585
        OnClick = N66Click
      end
    end
    object N35: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
      object MenuItem708: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610#1575#1606' '
        ShortCut = 16473
        OnClick = rptCustomerTransactionF1Click
      end
      object mnuCustomerTrancItemsF1: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
      object MenuItem711: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1607#1585' '#1605#1588#1578#1585#1610
        OnClick = rptCustTransDetailsF0Click
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object MenuItem713: TMenuItem
        Tag = 1
        Caption = #1578#1585#1575#1586' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = rptCustomersBalanceF1Click
      end
      object mnuCustomersBalanceF31: TMenuItem
        Action = mdiMainF.actrptCustomersBalanceF2
      end
      object mnurptCustomersBalance2F: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610#1575#1606' '#1576#1575' '#1575#1587#1606#1575#1583' '#1570#1606#1607#1575
        OnClick = mnurptCustomersBalance2FClick
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object MenuItem752: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1575#1593#1604#1575#1605' '#1576#1575#1585
        OnClick = kl1Click
      end
      object N179: TMenuItem
        Caption = '-'
      end
      object N384: TMenuItem
        Action = mdiMainF.actSpecialAccDetailOnTopicBookF
      end
      object mnuRptTrialBalance_Details: TMenuItem
        Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1578#1601#1589#1740#1604#1740' '#1583#1585' '#1587#1591#1581' '#1605#1593#1740#1606
        OnClick = mnuRptTrialBalance_DetailsClick
      end
      object N177: TMenuItem
        Caption = '-'
      end
      object rptCustomerTransactionF6: TMenuItem
        Tag = 6
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583#1587#1585#1601#1589#1604#8207#1607#1575#1610#8207#1582#1575#1589
        OnClick = rptCustomerTransactionF6Click
      end
      object rptCustomerTrancItemsF6: TMenuItem
        Tag = 6
        Caption = #8207#1585#1610#1586#1593#1605#1604#1603#1585#1583#1587#1585#1601#1589#1604#8207#1607#1575#1610#8207#1582#1575#1589
        OnClick = rptCustomerTrancItemsF6Click
      end
    end
    object MenuItem707: TMenuItem
      Tag = 8
      Caption = '&'#1711#1586#1575#1585#1588#1575#1578#8207#1601#1585#1608#1588
      object MenuItem710: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1607#1585' '#1603#1575#1604#1575
        OnClick = rptCustTrancDetailsStuffF0Click
      end
      object N36: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1601#1585#1608#1588' '#1585#1601#1578#1607
        object mnirptStuffGroupsF5: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575'...'#8207
        end
        object MnurptStuffCodingF5: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575'...'#8207
        end
        object mnuAidInfoAvailableSell: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffF12Click
        end
        object N38: TMenuItem
          Caption = '-'
        end
        object mniStoRptReciptWithGrpCustF5: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object mniRptReciptWithCustF5: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
      end
      object N109: TMenuItem
        Caption = '-'
      end
      object rptTrancDetailsF12: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1575#1604#1589' '#1601#1585#1608#1588
        OnClick = rptTrancDetailsF12Click
      end
      object AllrptRefineSell: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1601#1603#1610#1603#1610' '#1593#1605#1604#1603#1585#1583' '#1582#1575#1604#1589' '#1601#1585#1608#1588
        object N123: TMenuItem
          Tag = 1
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object N122: TMenuItem
          Tag = 2
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object mnuAidInfoAvailableRefine: TMenuItem
          Tag = 3
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object N120: TMenuItem
          Caption = '-'
        end
        object N119: TMenuItem
          Tag = 4
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = AllrptRefineSellClick
        end
        object N118: TMenuItem
          Tag = 5
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = AllrptRefineSellClick
        end
        object N117: TMenuItem
          Tag = 6
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1662#1603#1610#1606#1711
          OnClick = AllrptRefineSellClick
        end
      end
      object MenuItem715: TMenuItem
        Caption = '-'
      end
      object mnuSellsWithCost: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1576#1607#1605#1585#1575#1607' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '#1570#1606#1607#1575
        OnClick = mnuSellsWithCostClick
      end
      object MenuItem734: TMenuItem
        Caption = '-'
      end
      object MenuItem735: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1608'  '#1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588
        object MenuItem736: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = rptStuffGroupsMonthsF12Click
        end
        object MenuItem737: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = rptStuffCodingMonthsF12Click
        end
        object mnuAidInfoAvailableComper: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffMonthsF12Click
        end
        object MenuItem739: TMenuItem
          Caption = '-'
        end
        object MenuItem740: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = RptReciptWithGrpCustMonthsF12Click
        end
        object MenuItem741: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = RptReciptWithCustMonthsF12Click
        end
      end
      object MenuItem742: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1608'  '#1605#1575#1607#1610#1575#1606#1607' '#1576#1585#1711#1588#1578' '#1575#1586' '#1601#1585#1608#1588
        object MenuItem743: TMenuItem
          Caption = #1576#1585#1711#1588#1578' '#1605#1575#1607#1610#1575#1606#1607' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = rptStuffGroupsMonthsF6Click
        end
        object MenuItem744: TMenuItem
          Caption = #1576#1585#1711#1588#1578' '#1605#1575#1607#1610#1575#1606#1607' _'#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = rptStuffCodingMonthsF6Click
        end
        object mnuAidInfoAvailableBacksell: TMenuItem
          Caption = #1576#1585#1711#1588#1578' '#1605#1575#1607#1610#1575#1606#1607' _'#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffMonthsF6Click
        end
        object MenuItem746: TMenuItem
          Caption = '-'
        end
        object MenuItem747: TMenuItem
          Caption = #1576#1585#1711#1588#1578' '#1605#1575#1607#1610#1575#1606#1607' _'#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = RptReciptWithGrpCustMonthsF6Click
        end
        object MenuItem748: TMenuItem
          Caption = #1576#1585#1711#1588#1578' '#1605#1575#1607#1610#1575#1606#1607' _'#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = RptReciptWithCustMonthsF6Click
        end
      end
      object N192: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1608' '#1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575
        object N193: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = N193Click
        end
        object N194: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = N194Click
        end
        object N195: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = N195Click
        end
        object N196: TMenuItem
          Caption = '-'
        end
        object N197: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = N197Click
        end
        object N198: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1585#1587#1610#1583' '#1603#1575#1604#1575' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = N198Click
        end
      end
      object MenuItem749: TMenuItem
        Caption = '-'
      end
      object mnuSearchRecipts: TMenuItem
        Action = mdiMainF.actSearchRecipts
      end
      object mnuSprptHavaleh: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1582#1585#1608#1580' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        OnClick = rptHavalehClick
      end
      object mnuSPSellMounth: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588
        OnClick = rptanalyzSellsClick
      end
      object mnuSPSellCust: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1601#1585#1608#1588' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        OnClick = mnuSPSellCustClick
      end
      object N205: TMenuItem
        Caption = '-'
      end
      object mnuGeneralReportF2: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object mnuRptOperationalFSell: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1601#1585#1608#1588
        OnClick = mnuRptOperationalFStoreClick
      end
      object N391: TMenuItem
        Action = mdiMainF.actMultiReport
      end
      object MnurptMatrixBalance: TMenuItem
        Action = mdiMainF.actrptMatrixBalance
      end
    end
    object N158: TMenuItem
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1607#1575
      object ManifestoF0: TMenuItem
        Caption = #1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
        OnClick = ManifestoF0Click
      end
      object mniN166: TMenuItem
        Caption = #1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1582#1575#1589
        OnClick = mniN166Click
      end
      object N367: TMenuItem
        Caption = '-'
      end
      object mniFormDesignF92: TMenuItem
        Tag = 91
        Caption = #1580#1583#1608#1604' '#1662#1608#1585#1587#1575#1606#1578
        OnClick = mniFormDesignFClick
      end
      object N369: TMenuItem
        Tag = 85
        Caption = #1580#1583#1608#1604' '#1578#1582#1601#1740#1601
        OnClick = mniFormDesignFClick
      end
      object mnuRatings: TMenuItem
        Tag = 2
        Caption = #1605#1581#1575#1587#1576#1575#1578' '#1662#1608#1585#1587#1575#1606#1578
        OnClick = mnuRatingsClick
      end
      object N373: TMenuItem
        Tag = 3
        Caption = #1605#1581#1575#1587#1576#1575#1578' '#1578#1582#1601#1740#1601
        OnClick = mnuRatingsClick
      end
      object N374: TMenuItem
        Caption = '-'
      end
      object N376: TMenuItem
        Tag = 82
        Caption = #1580#1583#1608#1604' '#1575#1605#1578#1740#1575#1586' '#1583#1607#1740' '#1705#1575#1604#1575
        OnClick = mniFormDesignFClick
      end
      object N370: TMenuItem
        Tag = 83
        Caption = #1580#1583#1608#1604' '#1575#1605#1578#1740#1575#1586' '#1583#1607#1740' '#1605#1588#1578#1585#1740
        OnClick = mniFormDesignFClick
      end
      object N375: TMenuItem
        Caption = #1585#1578#1576#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575' '#1608' '#1582#1585#1740#1583#1575#1585
        OnClick = mnuRatingsClick
      end
      object N390: TMenuItem
        Caption = #1605#1581#1575#1587#1576#1575#1578' '#1608' '#1575#1605#1578#1740#1575#1586' '#1576#1606#1583#1740' '#1705#1575#1604#1575' '#1608' '#1582#1585#1740#1583#1575#1585
        OnClick = N390Click
      end
      object N371: TMenuItem
        Caption = '-'
      end
      object mniFormDesignF77: TMenuItem
        Tag = 77
        Caption = #1578#1593#1585#1740#1601' '#1575#1591#1604#1575#1593#1575#1578' '#1705#1575#1604#1575#1740' '#1607#1583#1740#1607
        OnClick = mniFormDesignFClick
      end
    end
    object BsellOtherReport: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem835: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object N320: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object N347: TMenuItem
        Caption = '-'
      end
      object MenuItem574: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem837: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object N348: TMenuItem
        Action = mdiMainF.actChangePass
      end
      object N430: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object N80: TMenuItem
        Caption = '-'
      end
      object MenuItem836: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1705' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear03: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem838: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object oolbar3: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem845: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem846: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem842: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem843: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem844: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object mnuArrange1: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object mnuCascade1: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object mnuClose1: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object mnuMinimizeAll1: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object mnuHorizontally2: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object mnuVertically1: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
        object mnuThemes: TMenuItem
          Caption = 'Themes'
        end
      end
      object mnuHelp2: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF3: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList3: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem847: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem848: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem849: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu24Maneger: TMainMenu
    AutoHotkeys = maManual
    OwnerDraw = True
    Left = 475
    Top = 483
    object vjMenu: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem10: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        Hint = '1'
        OnClick = CofferFormTypesF0Click
      end
      object MenuItem11: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object N455: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1740' '#1581#1602#1608#1602' '#1608' '#1705#1575#1585#1711#1586#1740#1606#1740
        Hint = '1'
        OnClick = MnuPay_1Click
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object N220: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object N221: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object mnuN179: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object N473: TMenuItem
        Caption = #1578#1587#1578' '#1662#1740#1594#1575#1605
        OnClick = N473Click
      end
    end
    object MenuItem25: TMenuItem
      Caption = #1578#1606#1592#1740#1605#1575#1578' '#1587#1740#1587#1578#1605
      Hint = '1'
      object N256: TMenuItem
        Caption = '-'
      end
      object MnuPay_N199: TMenuItem
        Tag = 40
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object MnuPay_N200: TMenuItem
        Tag = 41
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object N215: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object N167: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Action = mdiMainF.actCustomersAlternativeF
      end
      object N223: TMenuItem
        Caption = '-'
      end
      object MenuItem37: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
      object MnuPay_ConfigFenter: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1602#1608#1602
        Hint = '1'
        ImageIndex = 8
        OnClick = MnuPay_ConfigFenterClick
      end
    end
    object MnuPay_132: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
      object MnuPay_133: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1740#1607' '#1608' '#1579#1575#1576#1578
        OnClick = LookUp2Click
      end
      object N143: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1587#1578#1575#1606' '#1608' '#1588#1607#1585#1607#1575'('#1605#1575#1604#1610#1575#1578')'
        OnClick = mnuZoneFClick
      end
    end
    object MnuPay_vjMenu4: TMenuItem
      Tag = -1
      Caption = #1605#1583#1740#1585#1740#1578' '#1583#1587#1578#1585#1587#1740' '#1607#1575
      Hint = '1'
      object MnuPay_137: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object N352: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard29: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object MnuPay_128: TMenuItem
        Caption = '-'
      end
      object N317: TMenuItem
        Tag = 58
        Caption = #1575#1585#1578#1576#1575#1591' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606
        OnClick = mniFormDesignFClick
      end
      object mnuUsersCustomers: TMenuItem
        Tag = 60
        Caption = #1575#1585#1578#1576#1575#1591' '#1705#1575#1585#1576#1585#1575#1606' '#1576#1575' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606
        OnClick = mniFormDesignFClick
      end
      object N314: TMenuItem
        Tag = 89
        Caption = #1605#1581#1583#1608#1740#1578' '#1705#1575#1585#1576#1585#1575#1606' '#1576#1575' '#1575#1606#1576#1575#1585' '#1608' '#1601#1585#1605' '#1607#1575#1740' '#1575#1606#1576#1575#1585
        OnClick = mniFormDesignFClick
      end
      object MnuFindMenuInfoF: TMenuItem
        Caption = #1580#1587#1578#1580#1608#1740' '#1605#1606#1608
        OnClick = MnuFindMenuInfoFClick
      end
      object N468: TMenuItem
        Caption = #1705#1575#1585#1576#1585#1575#1606' '#1580#1583#1740#1583
        OnClick = N468Click
      end
    end
    object MnuPay_N8: TMenuItem
      Caption = #1591#1585#1575#1581#1740' '#1601#1585#1605
      object MnuPay_N234: TMenuItem
        Caption = #1578#1606#1592#1740#1605#8207#1578#1587#1578#8207#1711#1585#1583#1588#8207#1705#1575#1585
      end
      object MakeDesignForms1: TMenuItem
        Caption = 'Make Design Forms'
        OnClick = mnuMakeDesignFormsFClick
      end
    end
    object mnuItemOther24_: TMenuItem
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1740
      object CommandUpDate: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MnuPay_actCnPrefixWizard26: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
      object MnuSetMakeReport: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1711#1586#1575#1585#1588#1575#1578' '#1662#1608#1740#1575
        OnClick = MnuSetMakeReportClick
      end
      object MnuImportData: TMenuItem
        Caption = #1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607'(Import Data)'
        OnClick = MnuImportDataClick
      end
    end
    object MenuItem166: TMenuItem
      Tag = 8
      Caption = #1576#1705#1575#1662' '#1608' '#1576#1575#1586#1740#1575#1576#1740
      object MnuPay_N101: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        object MnuPay_139: TMenuItem
          Caption = #1601#1604#1575#1662#1610' '#1608' '#1607#1575#1585#1583' '#1583#1610#1587#1603
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MnuPay_140: TMenuItem
          Caption = 'CD'
          Hint = '1'
        end
      end
      object MenuItem35: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
    end
    object MenuItem478: TMenuItem
      Tag = 7
      Caption = 'Log Files'
      object log1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1594#1740#1740#1585#1575#1578' log'
        OnClick = log1Click
      end
      object mnuUserActivitiesF: TMenuItem
        Caption = #1601#1593#1575#1604#1740#1578' '#1705#1575#1585#1576#1585#1575#1606
        OnClick = mnuUserActivitiesFClick
      end
    end
    object MnuPay_N33: TMenuItem
      Caption = #1578#1740#1705#1578' '#1608' '#1662#1588#1578#1740#1576#1575#1606#1740' '
      object Mnufeedback: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
    end
    object MenuItem109_: TMenuItem
      Caption = #1587#1575#1604' '#1605#1575#1604#1740
      object N17: TMenuItem
        Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1594#1740#1585' '#1740#1705#1662#1575#1585#1670#1607
        OnClick = NewYearClick
      end
      object MakeMaliYear: TMenuItem
        Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
        OnClick = MakeMaliYearClick
      end
      object N105: TMenuItem
        Caption = '-'
      end
      object MnuGetFirstEntityFClick1: TMenuItem
        Caption = #1575#1606#1578#1602#1575#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1576#1578#1583#1575#1740' '#1583#1608#1585#1607
        OnClick = Mnu_GetFirstEntityFClick
      end
    end
    object MnuPay_N26: TMenuItem
      Caption = #1705#1575#1585#1578#1575#1576#1604
      object MnuPay_N233: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
      end
    end
    object N107: TMenuItem
      Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740
      object N151: TMenuItem
        Caption = #1582#1586#1575#1606#1607' '#1583#1575#1585#1740
        object N222: TMenuItem
          Caption = '&'#1608#1580#1608#1607' '#1608' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1576#1575#1606#1603#1610
          OnClick = MakeDocumentCofferF0Click
        end
        object N219: TMenuItem
          Caption = '&'#1583#1585#1610#1575#1601#1578' '#1608' '#1589#1583#1608#1585' '#1670#1603
          OnClick = MakeDocumentCheckF0Click
        end
      end
      object N90: TMenuItem
        Caption = '&'#1575#1606#1576#1575#1585' '#1608#1601#1585#1608#1588' '
        OnClick = MakeDocumentF0Click
      end
      object N383: TMenuItem
        Tag = 1
        Caption = #1578#1593#1583#1610#1604#1575#1578' '#1575#1606#1576#1575#1585
        OnClick = MakeDocumentF0Click
      end
      object N361: TMenuItem
        Caption = #1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
        object N410: TMenuItem
          Caption = #1589#1583#1608#1585' '#1587#1606#1583#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
          OnClick = MnuPay_N19Click
        end
        object N363: TMenuItem
          Caption = #1589#1583#1608#1585' '#1587#1606#1583#1579#1576#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '
          OnClick = MnuPay_N75Click
        end
        object N362: TMenuItem
          Caption = #1589#1583#1608#1585' '#1587#1606#1583#1605#1575#1605#1608#1585#1610#1578' '#1607#1575#1610' '#1582#1575#1589
          OnClick = MnuPay_NMakeDocumentMissionFClick
        end
      end
      object N411: TMenuItem
        Caption = #1583#1575#1585#1575#1574#1740' '#1579#1575#1576#1578
        object N413: TMenuItem
          Action = mdiMainF.actAssetsMakeDocument
        end
        object N420: TMenuItem
          Action = mdiMainF.actAssetsCleanDoc
        end
        object TMenuItem
        end
      end
    end
    object MnuSys: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuPay_N106: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
      end
      object MnuPay_actCnPrefixWizard28: TMenuItem
        Action = mdiMainF.actChangepassword
      end
      object MnuPay_N236: TMenuItem
        Caption = '-'
      end
      object MnuPay_AddToolbar: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        OnClick = AddToolbarClick
      end
      object N257: TMenuItem
        Caption = '-'
      end
      object MnuPay_138: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1705' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear04: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuPay_142: TMenuItem
        Caption = '-'
      end
      object MnuPay_Windows: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        object MnuPay_Tile0: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuPay_Cascade0: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuPay_actCnPrefixWizard30: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF4: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList4: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MnuPay_143: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        OnClick = aboutF0Click
      end
      object MnuPay_N80: TMenuItem
        Caption = '-'
      end
      object MnuPay_141: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        OnClick = optionsF0Click
      end
      object MnuPay_N1: TMenuItem
        Caption = '-'
      end
      object MnuPay_144: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu3Schedule: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 483
    Top = 33
    object vjMenuSchedule: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem3: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object N133: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnuGeneralReportF4: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object mnuN185: TMenuItem
        Caption = '-'
      end
      object MenuItem50: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object actMnuReciptsGridF1: TMenuItem
        Caption = 'actCustomersInterView'
        ShortCut = 16460
      end
    end
    object MenuItem51: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object N24: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578
        Hint = '1'
        OnClick = N24Click
      end
      object N49: TMenuItem
        Tag = 8
        Caption = #1578#1583#1608#1610#1606' '#1601#1585#1575#1610#1606#1583' '#1578#1608#1604#1610#1583
        Hint = '1'
        OnClick = ConversionCoF0Click
      end
      object MenuItem57: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem55: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object MenuItem54: TMenuItem
        Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
        Hint = '1'
        object N21: TMenuItem
          Caption = #1575#1610#1580#1575#1583' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
          OnClick = NewYearClick
        end
        object N100: TMenuItem
          Caption = #1605#1583#1740#1585#1740#1578' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
          OnClick = MakeMaliYearClick
        end
      end
      object MenuItem49: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object N166: TMenuItem
        Caption = '-'
      end
      object MenuItem56: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object N23: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '
      ImageIndex = 5
      object N91: TMenuItem
        Tag = 11
        Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604' '#1610#1575' '#1711#1585#1608#1607' '#1607#1575#1610' '#1588#1594#1604#1610
        OnClick = N91Click
      end
      object N155: TMenuItem
        Caption = '-'
      end
      object N41: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1607#1586#1610#1606#1607' '#1607#1575
        OnClick = N41Click
      end
      object N51: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1608#1604#1610#1583
        OnClick = N51Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object N110: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583#1610
        OnClick = N110Click
      end
      object N68: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1578#1608#1604#1610#1583
        OnClick = N68Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object N29: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1578#1608#1602#1601#1575#1578
        OnClick = N29Click
      end
      object N154: TMenuItem
        Caption = '-'
      end
      object N71: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1582#1591#1608#1591' '#1578#1608#1604#1610#1583
        OnClick = N71Click
      end
      object N81: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583
        OnClick = N81Click
      end
      object N156: TMenuItem
        Caption = '-'
      end
      object N31: TMenuItem
        Caption = #1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578
        OnClick = N31Click
      end
    end
    object mnuItemOther3: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '
      object N212: TMenuItem
        Caption = #1587#1601#1575#1585#1588#1575#1578' '#1608#1583#1585#1582#1608#1575#1587#1578' '#1578#1608#1604#1610#1583
        OnClick = N212Click
      end
      object N113: TMenuItem
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575#1610' '#1578#1608#1604#1610#1583
        OnClick = N113Click
      end
    end
    object N92: TMenuItem
      Caption = #1587#1601#1575#1585#1588#1575#1578
      object N30: TMenuItem
        Caption = #1578#1580#1586#1610#1607' '#1587#1601#1575#1585#1588' '
        OnClick = N30Click
      end
      object N32: TMenuItem
        Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1578#1608#1604#1610#1583
        OnClick = N32Click
      end
      object N33: TMenuItem
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583#1610' '#1608' '#1578#1608#1602#1601#1575#1578' '
        OnClick = N33Click
      end
    end
    object N40: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
      object N111: TMenuItem
        Caption = #1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1593#1608#1575#1605#1604
        OnClick = N111Click
      end
      object N210: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1585' '#1585#1608#1610' '#1605#1581#1589#1608#1604#1575#1578' '#1576#1578#1601#1603#1610#1603' '#1605#1575#1588#1610#1606
        OnClick = N210Click
      end
      object N310: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' '#1576#1607' '#1585#1610#1586
        object N112: TMenuItem
          Caption = #1590#1575#1610#1593#1575#1578' '
          OnClick = N112Click
        end
        object N211: TMenuItem
          Caption = #1578#1608#1602#1601#1575#1578' '
        end
        object N311: TMenuItem
          Caption = #1662#1585#1587#1606#1604
          OnClick = N311Click
        end
        object N42: TMenuItem
          Caption = #1605#1581#1589#1608#1604#1575#1578
          OnClick = N42Click
        end
      end
    end
    object MenuItem440: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem52: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem442: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem443: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem441: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear05: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem444: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnuN236: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem446: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem445: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem451: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem447: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem448: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem449: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem450: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp4: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF5: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList5: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem453: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem454: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem455: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu4Procurement: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 619
    Top = 35
    object vjMenuProcurement: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object N224: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        Hint = '1'
        OnClick = CofferFormTypesF0Click
      end
      object MenuItem4: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem5: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem27: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object MenuItem28: TMenuItem
        Caption = '-'
      end
      object N142: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object N207: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object N227: TMenuItem
        Caption = '-'
      end
      object MenuItem20: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
    end
    object MenuItem29: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem30: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem58: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object N172: TMenuItem
        Tag = 30
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1585#1586
        OnClick = mniFormDesignFClick
      end
      object N176: TMenuItem
        Caption = '-'
      end
      object MenuItem73: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object MenuItem74: TMenuItem
        Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
        Hint = '1'
        object MenuItem75: TMenuItem
          Caption = #1575#1610#1580#1575#1583' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
          OnClick = NewYearClick
        end
        object MenuItem76: TMenuItem
          Caption = #1605#1583#1740#1585#1740#1578' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
          OnClick = MakeMaliYearClick
        end
      end
      object MenuItem78: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object N165: TMenuItem
        Caption = '-'
      end
      object MenuItem92: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem93: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object mnuCustGroupsF0Click1: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1608' '#1581#1587#1575#1576#1607#1575' '
        OnClick = CustGroupsF0Click
      end
      object N250: TMenuItem
        Tag = 4
        Caption = #1605#1593#1585#1601#1610' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1583#1575#1582#1604#1740' '
        HelpContext = 4
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuSellersF10: TMenuItem
        Action = mdiMainF.actSellersF10
      end
      object mnuotherCustomerF6: TMenuItem
        Action = mdiMainF.actotherCustomerF6
      end
      object N249: TMenuItem
        Tag = 13
        Caption = #1605#1593#1585#1601#1610' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606
        HelpContext = 13
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuSellersFAll: TMenuItem
        Tag = 14
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1575#1608#1585#1575#1606
        HelpContext = 14
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object N251: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1705#1575#1585#1662#1585#1583#1575#1586#1575#1606' '
        HelpContext = 17
        Hint = 'ValidGroupType'
        OnClick = mnuAllotherCustomerFClick
      end
      object mnuN231: TMenuItem
        Action = mdiMainF.actCustomers8
      end
      object mnuN232: TMenuItem
        Action = mdiMainF.actOfficeCustomerF
      end
      object N423: TMenuItem
        Tag = 4
        Caption = #1605#1593#1585#1601#1740' '#1662#1705#1740#1606#1711
        OnClick = mnuPakingClick
      end
      object N424: TMenuItem
        Tag = 20
        Caption = #1605#1593#1585#1601#1740' '#1662#1585#1608#1606#1583#1607' '#1607#1575
        OnClick = mnuSellersFAllClick
      end
      object N233: TMenuItem
        Caption = '-'
      end
      object N173: TMenuItem
        Tag = 31
        Caption = #1579#1576#1578' '#1606#1585#1582' '#1585#1608#1586#1575#1606#1607' '#1575#1585#1586
        OnClick = mniFormDesignFClick
      end
      object N291: TMenuItem
        Tag = 29
        Caption = #1605#1593#1585#1601#1610' '#1605#1606#1575#1576#1593' '#1575#1591#1604#1575#1593#1575#1578#1610
        OnClick = mniFormDesignFClick
      end
      object N234: TMenuItem
        Tag = 36
        Caption = #1579#1576#1578' '#1606#1585#1582' '#1585#1608#1586#1575#1606#1607' '#1575#1585#1586'(2)'
        OnClick = mniFormDesignFClick
      end
      object N204: TMenuItem
        Tag = 33
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
        OnClick = mniFormDesignFClick
      end
      object N228: TMenuItem
        Caption = '-'
      end
      object mnuN229: TMenuItem
        Action = mdiMainF.actCoding
      end
      object N230: TMenuItem
        Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1582#1575#1589
        OnClick = mnuStuffCodingSpecialFClick
      end
      object N189: TMenuItem
        Tag = 32
        Caption = #1605#1593#1585#1601#1610' '#1578#1593#1585#1601#1607' '#1607#1575#1610' '#1608#1575#1585#1583#1575#1578#1610' '
        OnClick = mniFormDesignFClick
      end
    end
    object N262: TMenuItem
      Tag = 8
      Caption = #1593#1605#1604#1610#1575#1578' '#1578#1583#1575#1585#1603#1575#1578
      object N284: TMenuItem
        Tag = 22
        Caption = #1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object N283: TMenuItem
        Tag = 59
        Caption = #1587#1601#1575#1585#1588' '#1582#1585#1610#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object N416: TMenuItem
        Tag = 60
        Caption = #1587#1601#1575#1585#1588' '#1582#1585#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1604#1740#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object PackingList2: TMenuItem
        Tag = 61
        Caption = 'Packing List'
        OnClick = mnuReciptsgridFEnterClick
      end
      object N426: TMenuItem
        Tag = 4
        Caption = #1576#1585#1711#1607' '#1578#1581#1608#1740#1604' '#1705#1575#1604#1575
        OnClick = ReciptsF1Click
      end
      object N428: TMenuItem
        Tag = 5
        Caption = #1585#1587#1740#1583' '#1705#1575#1604#1575
        OnClick = ReciptsF1Click
      end
      object N282: TMenuItem
        Tag = 62
        Caption = #1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuReciptsgridFEnterClick
      end
      object N281: TMenuItem
        Caption = '-'
      end
      object N280: TMenuItem
        Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1607' '#1576#1575' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '
        OnClick = mnuNegotiationsFClick
      end
      object N279: TMenuItem
        Tag = 1
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1608#1601#1585#1605#1575
        OnClick = mnuProformaClick
      end
      object N278: TMenuItem
        Tag = 2
        Caption = #1579#1576#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1608#1586#1575#1585#1578' '#1576#1575#1586#1585#1711#1575#1606#1610
        OnClick = mnuProformaClick
      end
      object N277: TMenuItem
        Caption = '-'
      end
      object N276: TMenuItem
        Caption = #1579#1576#1578' '#1576#1608#1583#1580#1607' '#1575#1610' '#1601#1585#1570#1610#1606#1583' '#1607#1575' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575
        OnClick = mnuCosts0Click
      end
      object N275: TMenuItem
        Tag = 1
        Caption = #1579#1576#1578' '#1593#1605#1604#1603#1585#1583' '#1601#1585#1570#1610#1606#1583#1607#1575
        OnClick = mnuCosts0Click
      end
      object N274: TMenuItem
        Caption = #1589#1608#1585#1578' '#1607#1586#1610#1606#1607' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = N201Click
      end
      object N273: TMenuItem
        Caption = '-'
      end
      object N272: TMenuItem
        Tag = 22
        Caption = #1604#1610#1587#1578' '#1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object N417: TMenuItem
        Tag = 59
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object N271: TMenuItem
        Tag = 60
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588' '#1582#1585#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1604#1740#1583
        OnClick = mnuRpt00Click
      end
      object PackingList1: TMenuItem
        Tag = 61
        Caption = 'Packing List...'
        OnClick = mnuRpt00Click
      end
      object N270: TMenuItem
        Tag = 62
        Caption = #1604#1610#1587#1578' '#1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuRpt00Click
      end
      object N269: TMenuItem
        Caption = '-'
      end
      object N268: TMenuItem
        Tag = 108
        Caption = #1604#1610#1587#1578' '#1589#1608#1585#1578' '#1607#1586#1610#1606#1607' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = mnuRptCofferFAllTagClick
      end
      object N267: TMenuItem
        Caption = #1576#1610#1605#1607' '#1606#1575#1605#1607' '#1576#1575#1585#1576#1585#1610
        OnClick = mnuInsurancesFClick
      end
      object N266: TMenuItem
        Caption = '-'
      end
      object N265: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1606#1578#1585#1604' '#1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        OnClick = mnuOrderControlPointClick
      end
      object mnuIntegrateDatabase: TMenuItem
        Caption = #1578#1580#1605#1740#1593' '#1587#1575#1604#1607#1575#1740' '#1605#1575#1604#1740
        OnClick = mnuIntegrateDatabaseClick
      end
      object mnuReportID3500: TMenuItem
        Caption = 'mnuReportID3500 active with MakeReport'
        Visible = False
        OnClick = mnuReportID3500Click
      end
      object N264: TMenuItem
        Caption = '-'
      end
      object mnuGeneralReportF6: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
    end
    object mnuItemOther4: TMenuItem
      Caption = #1578#1583#1575#1585#1603#1575#1578
    end
    object mnuN182: TMenuItem
      Caption = #1593#1605#1604#1740#1575#1578' '#1582#1585#1740#1583
      Visible = False
      object mnuSellPlanF1: TMenuItem
        Action = mdiMainF.actSellPlanF
      end
      object mnuNegotiationsF: TMenuItem
        Caption = #1579#1576#1578' '#1605#1584#1575#1705#1585#1607' '#1576#1575' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '
        OnClick = mnuNegotiationsFClick
      end
    end
    object N378: TMenuItem
      Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588#1600#1606#1600#1583#1711#1575#1606
      object N379: TMenuItem
        Action = mdiMainF.actSpecialAccDetailOnTopicBookF
      end
      object N132: TMenuItem
        Tag = 4
        Caption = #8207#1605#1575#1606#1583#1607#8207#1581#1587#1575#1576#8207#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
      object N357rptCustomersBalance: TMenuItem
        Tag = 9
        Caption = #1578#1585#1575#1586' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
      object N358rptCustomerTransaction: TMenuItem
        Tag = 9
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomerTransactionF1Click
      end
      object N359actrptCustomerTrancItems: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
    end
    object Bsell_04Procurement: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem466: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem467: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem470: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem471: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem469: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear06: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem472: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnuN237: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem474: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem473: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem481: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem475: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem476: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem477: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem480: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp5: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF6: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList6: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem484: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem485: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem486: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu7Agriculture: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 227
    Top = 113
    object MenuItem60: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem69: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem70: TMenuItem
        Caption = '-'
      end
      object MenuItem71: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem72: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '
      ImageIndex = 5
      object N335: TMenuItem
        Tag = 74
        Caption = #1604#1740#1587#1578' '#1605#1606#1575#1591#1602' '
        OnClick = mniFormDesignFClick
      end
      object MenuItem84: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1592#1585#1601#1610#1578' '#1607#1575#1610' '#1579#1575#1576#1578' '#1608' '#1575#1587#1575#1587#1610
        OnClick = N153Click
      end
      object MenuItem83: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1582#1589#1575#1578' '#1586#1605#1610#1606' '#1607#1575#1610' '#1603#1588#1575#1608#1585#1586#1610
        OnClick = EarthFClick
      end
    end
    object mnuItemOther7: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '
      object MenuItem98: TMenuItem
        Caption = #1587#1601#1575#1585#1588#1575#1578' '#1608#1583#1585#1582#1608#1575#1587#1578' '#1578#1608#1604#1610#1583
        OnClick = N212Click
      end
      object MenuItem99: TMenuItem
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575#1610' '#1578#1608#1604#1610#1583
        OnClick = N113Click
      end
    end
    object Bsell_07Agriculture: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem115: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem116: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem117: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem118: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem119: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear07: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem120: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem121: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem122: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem123: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem124: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem125: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem126: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem127: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem128: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp6: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF7: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList7: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem130: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem131: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem132: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu8Machinery: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 355
    Top = 113
    object MenuItem150: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem161: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem162: TMenuItem
        Caption = '-'
      end
      object MenuItem163: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem168: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object N157: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607' '#1575#1589#1604#1610' '#1583#1575#1585#1575#1610#1610#1607#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuN1100: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuStuffCodingMachineryF: TMenuItem
        Caption = #1603#1583#1610#1606#1711' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' '#1608' '#1583#1575#1585#1575#1610#1610' '#1607#1575
        Hint = ' '
        ImageIndex = 0
        OnClick = mnuStuffCodingMachineryFClick
      end
      object mnuStuffCodingMachinery2F: TMenuItem
        Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1601#1606#1740' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        OnClick = mnuStuffCodingMachinery2FClick
      end
      object MenuItem198: TMenuItem
        Caption = '-'
      end
      object mnuCoding3: TMenuItem
        Action = mdiMainF.actCoding
      end
      object mnuN18: TMenuItem
        Caption = '-'
      end
      object mnuN19: TMenuItem
        Caption = #1578#1602#1608#1740#1605' '#1705#1575#1585#1740
        object mnuN20: TMenuItem
          Tag = 52
          Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1578#1575#1740#1605' '#1588#1740#1578
          OnClick = mniFormDesignFClick
        end
        object mnuN21: TMenuItem
          Caption = ' '#1605#1593#1585#1601#1740' '#1575#1606#1608#1575#1593' '#1588#1740#1601#1578' '#1607#1575' '
          OnClick = mnuTshSchedulesClick
        end
        object mnuN22: TMenuItem
          Tag = 64
          Caption = #1578#1602#1608#1740#1605
          OnClick = mniFormDesignFClick
        end
      end
    end
    object mnuItemOther8: TMenuItem
      Tag = 8
      Caption = #1593#1605#1604#1610#1575#1578' '
      object MenuItem229: TMenuItem
        Tag = 22
        Caption = #1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem236: TMenuItem
        Tag = 60
        Caption = #1587#1601#1575#1585#1588' '#1582#1585#1610#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem237: TMenuItem
        Tag = 61
        Caption = 'Packing List'
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem249: TMenuItem
        Tag = 62
        Caption = #1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem250: TMenuItem
        Caption = '-'
      end
      object MenuItem255: TMenuItem
        Caption = '-'
      end
      object MenuItem263: TMenuItem
        Tag = 22
        Caption = #1604#1610#1587#1578' '#1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object MenuItem264: TMenuItem
        Tag = 60
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object MenuItem267: TMenuItem
        Tag = 62
        Caption = #1604#1610#1587#1578' '#1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuRpt00Click
      end
      object MenuItem268: TMenuItem
        Caption = '-'
      end
    end
    object mnuN16: TMenuItem
      Caption = #1605#1575#1588#1740#1606' '#1570#1604#1575#1578
      object mnuN17: TMenuItem
        Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1601#1606#1740' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        OnClick = mnuStuffCodingMachinery2FClick
      end
      object mnuN1110: TMenuItem
        Caption = #1578#1608#1602#1601#1575#1578' '#1583#1587#1578#1711#1575#1607' '#1607#1575
        OnClick = mnuN1110Click
      end
    end
    object N226: TMenuItem
      Caption = ' '#1582#1608#1583#1585#1608
      object mnuMaintenanceF: TMenuItem
        Tag = 141
        Caption = #1583#1587#1578#1608#1585' '#1603#1575#1585' '#1578#1593#1605#1610#1585#1575#1578
        OnClick = mnuMaintenanceFClick
      end
      object mnuMachinDeliveryF: TMenuItem
        Caption = #1578#1581#1608#1610#1604' '#1608' '#1578#1581#1608#1604' '#1582#1608#1583#1585#1608#1607#1575
        OnClick = mnuMachinDeliveryFClick
      end
      object N200: TMenuItem
        Tag = 55
        Caption = #1587#1607#1605#1610#1607' '#1576#1606#1583#1610' '#1587#1608#1582#1578
        OnClick = mniFormDesignFClick
      end
      object N201: TMenuItem
        Tag = 56
        Caption = #1605#1589#1585#1601' '#1587#1608#1582#1578
        OnClick = mniFormDesignFClick
      end
      object mnuRptCardMachinesF: TMenuItem
        Caption = #1603#1575#1585#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        OnClick = mnuRptCardMachinesFClick
      end
      object mnuForwards2FF: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1740#1583
        OnClick = mnuForwards2FFClick
      end
      object mnuMaintenanceGeneralReportF1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610' '#1583#1587#1578#1608#1585' '#1705#1575#1585
        OnClick = mnuMaintenanceGeneralReportF1Click
      end
    end
    object Bsell_08Machinery: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object mnuN15: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1575#1606#1576#1575#1585
      object mnuActRptCardexF5: TMenuItem
        Action = mdiMainF.ActRptCardexF1
      end
      object mnuCoding7: TMenuItem
        Action = mdiMainF.actCoding
      end
    end
    object MenuItem312: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem315: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem318: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem323: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem326: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear08: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem327: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem328: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem330: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem332: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem334: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem335: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem341: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem342: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem346: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp7: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF8: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList8: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem350: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem353: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem354: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu5ProcurementI: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 715
    Top = 35
    object vjMenu5ProcurementI: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object N342: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        Hint = '1'
        OnClick = CofferFormTypesF0Click
      end
      object N341: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
    end
    object MenuItem374: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem375: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem376: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem386: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem387: TMenuItem
        Caption = '-'
      end
      object MenuItem388: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object N188: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object N259: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1608' '#1581#1587#1575#1576#1607#1575' '
        OnClick = CustGroupsF0Click
      end
      object N253: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1705#1575#1585#1662#1585#1583#1575#1586#1575#1606' '
        HelpContext = 17
        Hint = 'ValidGroupType'
        OnClick = mnuAllotherCustomerFClick
      end
      object N258: TMenuItem
        Tag = 4
        Caption = #1605#1593#1585#1601#1610' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1583#1575#1582#1604#1740' '
        HelpContext = 4
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuN257: TMenuItem
        Action = mdiMainF.actSellersF10
      end
      object N255: TMenuItem
        Tag = 13
        Caption = #1605#1593#1585#1601#1610' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606
        HelpContext = 13
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object N254: TMenuItem
        Tag = 14
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1575#1608#1585#1575#1606
        HelpContext = 14
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuN199: TMenuItem
        Tag = 12
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606
        HelpContext = 12
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object N203: TMenuItem
        Caption = '-'
      end
      object mnuCoding4: TMenuItem
        Action = mdiMainF.actCoding
      end
    end
    object mnuItemOther5: TMenuItem
      Tag = 8
      Caption = #1593#1605#1604#1740#1600#1575#1578' '#1578#1600#1583#1575#1585#1705#1575#1578
      object MenuItem418: TMenuItem
        Tag = 22
        Caption = #1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object N414: TMenuItem
        Tag = 59
        Caption = #1587#1601#1575#1585#1588' '#1582#1585#1610#1583' '
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem420: TMenuItem
        Tag = 60
        Caption = #1587#1601#1575#1585#1588' '#1582#1585#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1604#1740#1583
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem421: TMenuItem
        Tag = 61
        Caption = 'Packing List'
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem422: TMenuItem
        Tag = 62
        Caption = #1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuReciptsgridFEnterClick
      end
      object MenuItem423: TMenuItem
        Caption = '-'
      end
      object MenuItem426: TMenuItem
        Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1607' '#1576#1575' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '
        OnClick = mnuNegotiationsFClick
      end
      object MenuItem429: TMenuItem
        Tag = 1
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1608#1601#1585#1605#1575
        OnClick = mnuProformaClick
      end
      object MenuItem431: TMenuItem
        Tag = 2
        Caption = #1579#1576#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1608#1586#1575#1585#1578' '#1576#1575#1586#1585#1711#1575#1606#1610
        OnClick = mnuProformaClick
      end
      object MenuItem433: TMenuItem
        Caption = '-'
      end
      object MenuItem434: TMenuItem
        Caption = #1579#1576#1578' '#1576#1608#1583#1580#1607' '#1575#1610' '#1601#1585#1570#1610#1606#1583' '#1607#1575' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575
        OnClick = mnuCosts0Click
      end
      object MenuItem435: TMenuItem
        Tag = 1
        Caption = #1579#1576#1578' '#1593#1605#1604#1603#1585#1583' '#1601#1585#1570#1610#1606#1583#1607#1575
        OnClick = mnuCosts0Click
      end
      object MenuItem436: TMenuItem
        Caption = #1589#1608#1585#1578' '#1607#1586#1610#1606#1607' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = N201Click
      end
      object MenuItem437: TMenuItem
        Caption = '-'
      end
      object MenuItem438: TMenuItem
        Tag = 22
        Caption = #1604#1610#1587#1578' '#1583#1585' '#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object N415: TMenuItem
        Tag = 59
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588' '#1582#1585#1610#1583
        OnClick = mnuRpt00Click
      end
      object MenuItem439: TMenuItem
        Tag = 60
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588' '#1582#1585#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1604#1740#1583
        OnClick = mnuRpt00Click
      end
      object MenuItem452: TMenuItem
        Tag = 61
        Caption = 'Packing List...'
        OnClick = mnuRpt00Click
      end
      object MenuItem456: TMenuItem
        Tag = 62
        Caption = #1604#1610#1587#1578' '#1575#1606#1589#1585#1575#1601' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuRpt00Click
      end
      object MenuItem457: TMenuItem
        Caption = '-'
      end
      object MenuItem458: TMenuItem
        Tag = 108
        Caption = #1604#1610#1587#1578' '#1589#1608#1585#1578' '#1607#1586#1610#1606#1607' '#1587#1601#1575#1585#1588#1575#1578
        OnClick = mnuRptCofferFAllTagClick
      end
      object MenuItem459: TMenuItem
        Caption = #1576#1610#1605#1607' '#1606#1575#1605#1607' '#1576#1575#1585#1576#1585#1610
        OnClick = mnuInsurancesFClick
      end
      object MenuItem460: TMenuItem
        Caption = '-'
      end
      object MenuItem461: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1606#1578#1585#1604' '#1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        OnClick = mnuOrderControlPointClick
      end
      object MenuItem462: TMenuItem
        Caption = '-'
      end
      object mnuGeneralReportF5: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
    end
    object N174: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1582#1585#1610#1583
      object mnuSellPlan2: TMenuItem
        Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1582#1585#1610#1583
        OnClick = mnuSellPlan2Click
      end
      object N187: TMenuItem
        Caption = #1579#1576#1578' '#1605#1584#1575#1705#1585#1607' '#1576#1575' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '
        OnClick = mnuNegotiationsFClick
      end
      object mnuReviewRequestsF: TMenuItem
        Caption = #1576#1585#1585#1587#1740' '#1608' '#1606#1607#1575#1740#1740' '#1705#1585#1583#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
        OnClick = mnuReviewRequestsFClick
      end
      object mnuN202: TMenuItem
        Caption = '-'
      end
      object mnuN200: TMenuItem
        Caption = #1579#1576#1578' '#1578#1606#1582#1608#1575#1607
        OnClick = PaymentCashFClick
      end
      object mnuN201: TMenuItem
        Caption = #1604#1610#1587#1578' '#1578#1606#1582#1608#1575#1607
      end
      object mnuRpt001F4: TMenuItem
        Action = mdiMainF.actRpt001F0
      end
      object N288: TMenuItem
        Caption = '-'
      end
      object N298: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1575#1586#1585#1711#1575#1606#1610' '#1583#1575#1582#1604#1610
        OnClick = mnuRptOperationalFStoreClick
      end
      object mnuReciptsFundF: TMenuItem
        Caption = #1589#1608#1585#1578' '#1582#1604#1575#1589#1607' '#1578#1606#1582#1608#1575#1607' '#1582#1585#1740#1583
        OnClick = mnuReciptsFundFClick
      end
      object N208: TMenuItem
        Caption = '-'
      end
      object mnuForwards2FFClick1: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1740#1583
        OnClick = mnuForwards2FFClick
      end
      object N209: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1740#1583'1'
        OnClick = N209Click
      end
      object N213: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604' '#1587#1601#1575#1585#1588#1575#1578' '#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1740#1583'2'
        OnClick = N213Click
      end
    end
    object N295: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1606#1602#1583#1610#1606#1711#1610
      object mnuGetOtherMoneyF6: TMenuItem
        Tag = 6
        Caption = #1583#1585#1610#1575#1601#1578' '#1608#1580#1607' '#1606#1602#1583
        ImageIndex = 21
        OnClick = mnuGetOtherMoneyF6Click
      end
      object mnuGetOtherMoneyF7: TMenuItem
        Tag = 7
        Caption = #1662#1585#1583#1575#1582#1578' '#1608#1580#1607' '#1606#1602#1583
        ImageIndex = 33
        OnClick = mnuGetOtherMoneyF6Click
      end
      object N292: TMenuItem
        Caption = '-'
      end
      object mnuListGetOtherMoneyF6: TMenuItem
        Tag = 6
        Caption = #1604#1610#1587#1578' '#1583#1585#1610#1575#1601#1578' '#1608#1580#1607' '#1606#1602#1583
        OnClick = RptCofferF1Click
      end
      object mnuListGetOtherMoneyF7: TMenuItem
        Tag = 7
        Caption = #1604#1610#1587#1578' '#1662#1585#1583#1575#1582#1578' '#1608#1580#1607' '#1606#1602#1583
        OnClick = RptCofferF1Click
      end
      object N296: TMenuItem
        Caption = '-'
      end
      object N293: TMenuItem
        Tag = 17
        Caption = #1711#1586#1575#1585#1588' '#1606#1602#1583#1610#1606#1711#1610' '#1603#1575#1585' '#1662#1585#1583#1575#1586#1575#1606
        OnClick = rptBalanceCofferF0Click
      end
      object N294: TMenuItem
        Tag = 17
        Caption = #1711#1585#1583#1588' '#1581#1587#1575#1576' '#1603#1575#1585' '#1662#1585#1583#1575#1586#1575#1606
        OnClick = rptCofferTransF1Click
      end
    end
    object N54541: TMenuItem
      Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
      object N357: TMenuItem
        Tag = 9
        Caption = #1578#1585#1575#1586' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
      object N358: TMenuItem
        Tag = 9
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583' '#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomerTransactionF1Click
      end
      object N359: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
      object N372: TMenuItem
        Action = mdiMainF.actSpecialAccDetailOnTopicBookF
      end
      object N108: TMenuItem
        Tag = 4
        Caption = #8207#1605#1575#1606#1583#1607#8207#1581#1587#1575#1576#8207#1601#1585#1608#1588#1606#1583#1711#1575#1606
        OnClick = rptCustomersBalanceF1Click
      end
    end
    object Bsell_05ProcurementI: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem465: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem482: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem483: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem487: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem489: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear09: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem494: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem497: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem498: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem499: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem511: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem515: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem516: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem517: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem518: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp8: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF9: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList9: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem520: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem521: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem522: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu6Contractors: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 91
    Top = 123
    object vjMenu6Contractors: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object N340: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610
        Enabled = False
        Hint = '1'
      end
      object N339: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
    end
    object MenuItem1: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem9: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem15: TMenuItem
        Caption = '-'
      end
      object N331: TMenuItem
        Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
        OnClick = MakeDocumentF0Click
      end
      object MenuItem32: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
      object N164: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1593#1605#1604#1610#1575#1578#1610
        OnClick = mnuRptOperationalFStoreClick
      end
    end
    object MenuItem36: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object N153: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuN157: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuCoding5: TMenuItem
        Action = mdiMainF.actCoding
      end
      object MenuItem63: TMenuItem
        Caption = '-'
      end
      object N239: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606' '#1608' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
        OnClick = CustGroupsF0Click
      end
      object mnuAllCustomersF: TMenuItem
        Tag = 12
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606
        HelpContext = 12
        Hint = 'ValidGroupType'
        OnClick = mnuAllCustomersFClick
      end
      object N232: TMenuItem
        Tag = 13
        Caption = #1605#1593#1585#1601#1610' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
        HelpContext = 13
        Hint = 'ValidGroupType'
        OnClick = mnuAllCustomersFClick
      end
      object N238: TMenuItem
        Tag = 14
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1575#1608#1585#1575#1606
        HelpContext = 14
        Hint = 'ValidGroupType'
        OnClick = mnuAllCustomersFClick
      end
      object N202: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1711#1575#1607#1607#1575
        HelpContext = 16
        Hint = 'ValidGroupType'
        OnClick = mnuAllCustomersFClick
      end
      object MenuItem59: TMenuItem
        Caption = '-'
      end
      object mnuAllotherCustomerF: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1711#1575#1607#1607#1575
        HelpContext = 16
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuAllotherCustomerFClick
      end
      object mnuN14: TMenuItem
        Caption = #1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578
        OnClick = LookUp2Click
      end
      object mnuCustomersTaxF3: TMenuItem
        Action = mdiMainF.actCustomersTaxF
      end
    end
    object N237: TMenuItem
      Caption = #1602#1585#1575#1585#1583#1575#1583#1607#1575' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610
      object mnuCnt_ContractsF145: TMenuItem
        Tag = 145
        Caption = #1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606
        OnClick = mnuCnt_ContractsF145Click
      end
      object mnuCnt_ContractsF146: TMenuItem
        Tag = 146
        Caption = #1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
        OnClick = mnuCnt_ContractsF145Click
      end
      object mnuCnt_ContractsF147: TMenuItem
        Tag = 147
        Caption = #1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575#1610' '#1582#1585#1610#1583' '#1603#1575#1604#1575
        OnClick = mnuCnt_ContractsF145Click
      end
      object mnuCnt_ContractsF148: TMenuItem
        Tag = 148
        Caption = #1587#1575#1610#1585' '#1602#1585#1575#1585#1583#1575#1583#1607'148'
        Visible = False
        OnClick = mnuCnt_ContractsF145Click
      end
      object mnuCnt_ContractsF149: TMenuItem
        Tag = 149
        Caption = #1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575' 149'
        Visible = False
        OnClick = mnuCnt_ContractsF145Click
      end
      object N235: TMenuItem
        Caption = '-'
      end
      object mnuCnt_ContractOperationsF: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1593#1605#1604#1610#1575#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = mnuCnt_ContractOperationsFClick
      end
      object N242: TMenuItem
        Caption = '-'
      end
      object mnuCnt_RunSchedulesF: TMenuItem
        Caption = #1579#1576#1578' '#1576#1585#1606#1575#1605#1607' '#1586#1605#1575#1606#1576#1606#1583#1610' '#1575#1580#1585#1575#1610#1610' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = mnuCnt_RunSchedulesFClick
      end
      object mnuCnt_RunScheduleItemsF: TMenuItem
        Caption = #1576#1585#1575#1605#1607' '#1585#1610#1586#1610' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = mnuCnt_RunScheduleItemsFClick
      end
      object N199: TMenuItem
        Tag = 4
        Caption = #1603#1575#1585#1603#1585#1583' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
        OnClick = mnuTshFunctionsClick
      end
      object mnuRptReportsFAll: TMenuItem
        Tag = 486
        Caption = #1604#1610#1587#1578' '#1602#1585#1575#1585#1583#1575#1583
        OnClick = mnuRptReportsFAllClick
      end
      object mnurptCardProjectF: TMenuItem
        Caption = #1705#1575#1585#1578' '#1662#1585#1608#1688#1607
        OnClick = mnurptCardProjectFClick
      end
      object N412: TMenuItem
        Action = mdiMainF.actrptDarayiEjareF
      end
    end
    object mnuItemOther6: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
    end
    object N381: TMenuItem
      Caption = #1711#1586#1575#1585#1588' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606
      object N382: TMenuItem
        Action = mdiMainF.actSpecialAccDetailOnTopicBookF
      end
    end
    object Bsell_06Contractors: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem88: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem89: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem90: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem91: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem94: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear10: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem95: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem96: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem100: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem101: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem102: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem103: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem105: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem106: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem107: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp9: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF10: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList10: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem110: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem113: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem114: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu12MainCoding: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 227
    Top = 197
    object MenuItem53: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object mnuArtworks: TMenuItem
        Caption = #1705#1583#1740#1606#1711' '#1570#1579#1575#1585' '#1607#1606#1585#1740
        OnClick = mnuArtworksClick
      end
      object MenuItem61: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem62: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem64: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MenuItem108: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object MenuItem129: TMenuItem
        Caption = '-'
      end
      object MenuItem133: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object MenuItem134: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
    end
    object MenuItem135: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem136: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object N444: TMenuItem
        Caption = '-'
      end
      object N445: TMenuItem
        Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1740
        object N447: TMenuItem
          Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
          Hint = '1'
          OnClick = CommandUpDateClick
        end
        object FTP1: TMenuItem
          Action = mdiMainF.actUpdateEXE
        end
        object N446: TMenuItem
          Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1711#1586#1575#1585#1588#1575#1578' '#1662#1608#1740#1575
          OnClick = MnuSetMakeReportClick
        end
      end
      object N450: TMenuItem
        Caption = #1587#1575#1604' '#1605#1575#1604#1740
        object N454: TMenuItem
          Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1594#1740#1585' '#1740#1705#1662#1575#1585#1670#1607
          OnClick = NewYearClick
        end
        object N453: TMenuItem
          Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
          OnClick = MakeMaliYearClick
        end
        object N452: TMenuItem
          Caption = '-'
        end
        object N451: TMenuItem
          Caption = #1575#1606#1578#1602#1575#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1576#1578#1583#1575#1740' '#1583#1608#1585#1607
          OnClick = Mnu_GetFirstEntityFClick
        end
      end
      object N471: TMenuItem
        Caption = '-'
      end
      object N469: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem356: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
      object MenuItem357: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem358: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuStuffGroupsAccessory3: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuStuffGroupsAccessory4: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory2
      end
      object mnuN239: TMenuItem
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575'2'
        OnClick = mnuStuffGroups2FClick
      end
      object mnuCoding2: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object mnuLookUps3F: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      end
      object MenuItem372: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
    end
    object N248: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1575#1588#1582#1575#1589'/'#1605#1585#1575#1603#1586
      object MenuItem377: TMenuItem
        Tag = 2
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1588#1582#1575#1589' '#1608' '#1605#1585#1575#1603#1586
        OnClick = CustGroupsF0Click
      end
      object MenuItem393: TMenuItem
        Caption = '-'
      end
      object mnuActCustomersF3: TMenuItem
        Action = mdiMainF.ActCustomersF
      end
      object mnuN192: TMenuItem
        Tag = 4
        Caption = #1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1583#1575#1582#1604#1740' '
        HelpContext = 4
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuSellersF11: TMenuItem
        Action = mdiMainF.actSellersF10
      end
      object mnuN193: TMenuItem
        Tag = 12
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606
        HelpContext = 12
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuN1901: TMenuItem
        Tag = 13
        Caption = #1605#1593#1585#1601#1610' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606
        HelpContext = 13
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object mnuN1911: TMenuItem
        Tag = 14
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1575#1608#1585#1575#1606
        HelpContext = 14
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object MenuItem373: TMenuItem
        Caption = '-'
      end
      object mnuN194: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1576#1575#1606#1603#1607#1575
        HelpContext = 1
        Hint = 'ValidGroupType'
        OnClick = CompanyBankAccountsF0Click
      end
      object mnuN195: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1578#1587#1607#1610#1604#1575#1578' '#1583#1607#1606#1583#1711#1575#1606
        HelpContext = 7
        Hint = 'ValidGroupType'
        OnClick = OtherCustomerF7Click
      end
      object N190: TMenuItem
        Caption = '-'
      end
      object mnuN197: TMenuItem
        Tag = 11
        Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
        HelpContext = 11
        Hint = 'ValidGroupType'
        OnClick = mnuOfficeCustomerFAllClick
      end
      object mnuN196: TMenuItem
        Tag = 2
        Caption = #1605#1593#1585#1601#1610' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575
        HelpContext = 2
        Hint = 'ValidGroupType'
        OnClick = CashiersF0Click
      end
      object mnuN198: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1705#1575#1585#1662#1585#1583#1575#1586#1575#1606' '
        HelpContext = 17
        Hint = 'ValidGroupType'
        OnClick = mnuAllotherCustomerFClick
      end
      object mnuN203: TMenuItem
        Caption = '-'
      end
      object mnuN1912: TMenuItem
        Action = mdiMainF.actCustomers8
      end
      object mnuN1913: TMenuItem
        Action = mdiMainF.actCustomersF9
      end
      object N433: TMenuItem
        Tag = 20
        Caption = #1605#1593#1585#1601#1740' '#1662#1585#1608#1606#1583#1607' '#1607#1575
        OnClick = mnuSellersFAllClick
      end
      object l2: TMenuItem
        Tag = 23
        Caption = #1605#1593#1585#1601#1740' '#1662#1585#1608#1688#1607' '#1607#1575
        OnClick = mnuSellersFAllClick
      end
      object N485: TMenuItem
        Tag = 21
        Caption = #1587#1601#1575#1585#1588#1575#1578' '#1582#1575#1585#1580#1740
        OnClick = mnuSellersFAllClick
      end
      object mnuN204: TMenuItem
        Caption = '-'
      end
      object mnuOfficeCustomerF2: TMenuItem
        Action = mdiMainF.actOfficeCustomerF
      end
      object N286: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1711#1575#1607#1607#1575
        HelpContext = 16
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object N240: TMenuItem
        Tag = 15
        Caption = #1604#1610#1587#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = otherCustomerF0Click
      end
      object mnuN1914: TMenuItem
        Action = mdiMainF.actotherCustomerF6
      end
      object MenuItem379: TMenuItem
        Tag = 3
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1587#1585#1601#1589#1604#1607#1575'/'#1607#1586#1740#1606#1607
        HelpContext = 3
        Hint = 'ValidGroupType'
        OnClick = otherCustomerF0Click
      end
      object mnuN311: TMenuItem
        Tag = 18
        Caption = #1605#1593#1585#1601#1740' '#1601#1585#1570#1740#1606#1583#1607#1575
        HelpContext = 18
        Hint = 'ValidGroupType'
        OnClick = otherCustomerF0Click
      end
      object mnuN205: TMenuItem
        Caption = '-'
      end
      object mnuUseUnitsNew2: TMenuItem
        Tag = 22
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'*'
        OnClick = mnuOfficeCustomerFAllClick
      end
      object MenuItem391: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'X'
        OnClick = UseUnitsF0Click
      end
      object MenuItem392: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
        OnClick = NUseOthersClick
      end
      object mnuSpecialAccDetailOnTopicBookF1: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610' '#1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576
      end
      object N385: TMenuItem
        Caption = '-'
      end
      object mnuChangeCustIDF: TMenuItem
        Caption = #1578#1594#1740#1740#1585' '#1705#1583#1607#1575#1740' '#1605#1588#1578#1585#1740' '#1576#1607' '#1705#1583' '#1580#1583#1740#1583
        ShortCut = 16456
        OnClick = mnuChangeCustIDFClick
      end
      object N78: TMenuItem
        Action = mdiMainF.actStuffDetailsF
      end
      object N6: TMenuItem
        Action = mdiMainF.actStuffDetailsF
      end
      object mnuLookUpsF: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      end
      object MnuStereotypy: TMenuItem
        Caption = #1605#1593#1585#1601#1740' '#1705#1604#1740#1588#1607' '#1607#1575
        OnClick = MnuStereotypyClick
      end
      object N93: TMenuItem
        Tag = 19
        Caption = #1605#1593#1585#1601#1740' '#1711#1585#1608#1607' '#1607#1575#1740' '#1588#1594#1604#1740
        OnClick = mnuOfficeCustomerFAllClick
      end
      object N443: TMenuItem
        Tag = 25
        Caption = #1576#1575#1606#1705#8204#1607#1575' '#1608' '#1605#1572#1587#1587#1607#8204#1607#1575#1740' '#1605#1575#1604#1740
        OnClick = mnuSellersFAllClick
      end
      object N470: TMenuItem
        Caption = '-'
      end
      object mnuCustomersNotUseF: TMenuItem
        Caption = #1705#1583#1740#1606#1711' '#1576#1583#1608#1606' '#1711#1585#1583#1588
        OnClick = mnuCustomersNotUseFClick
      end
    end
    object N438: TMenuItem
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1740
      object N449: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object FTP2: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
      object N448: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1711#1586#1575#1585#1588#1575#1578' '#1662#1608#1740#1575
        OnClick = MnuSetMakeReportClick
      end
    end
    object MenuItem729: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem738: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem745: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem753: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem754: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear11: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem755: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem756: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem757: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem758: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem759: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem760: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem761: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem762: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem763: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object MenuItem764: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object MenuItem765: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object MenuItem766: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object MenuItem767: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object MenuItem768: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object MenuItem769: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object mnuHelp10: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF11: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList11: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem771: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem772: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem773: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu9TimeSheet: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 483
    Top = 113
    object mnu17: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object mnu18: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object mnu27: TMenuItem
        Caption = '-'
      end
      object mnu32: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
      object N241: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object N324: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object N332: TMenuItem
        Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
        Hint = '1'
        object N334: TMenuItem
          Caption = #1575#1610#1580#1575#1583' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
          OnClick = NewYearClick
        end
        object N333: TMenuItem
          Caption = #1605#1583#1740#1585#1740#1578' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
          OnClick = MakeMaliYearClick
        end
      end
    end
    object mnu33: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object mnu36: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1662#1585#1587#1606#1604'/'#1603#1575#1585#1711#1575#1607#1607#1575
        OnClick = CustGroupsF0Click
      end
      object mnuOfficeCustomerFAll: TMenuItem
        Tag = 19
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1588#1594#1604#1610
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object mnuN206: TMenuItem
        Tag = 11
        Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
        HelpContext = 11
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object mnuOfficeCustomerF3: TMenuItem
        Tag = 5
        Caption = #1605#1593#1585#1601#1610' '#1608#1575#1581#1583#1607#1575#1610' '#1587#1575#1586#1605#1575#1606#1610
        HelpContext = 5
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object mnuOfficeCustomerF4: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1711#1575#1607#1607#1575
        HelpContext = 16
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object mnu35: TMenuItem
        Caption = '-'
      end
      object mnuFormDesign52: TMenuItem
        Tag = 52
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' TimeSheet'
        OnClick = mniFormDesignFClick
      end
      object mnuTshSchedules: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1588#1610#1601#1578' '#1607#1575
        OnClick = mnuTshSchedulesClick
      end
      object mnuN208: TMenuItem
        Caption = '-'
      end
      object mnuGroupsPerson: TMenuItem
        Tag = 50
        Caption = #1575#1585#1578#1576#1575#1591' '#1662#1585#1587#1606#1604' '#1576#1575' '#1711#1585#1608#1607' '#1607#1575#1610' '#1588#1594#1604#1610
        OnClick = mniFormDesignFClick
      end
      object mnuWorkGroupsPerson51: TMenuItem
        Tag = 51
        Caption = #1575#1585#1578#1576#1575#1591' '#1662#1585#1587#1606#1604' '#1576#1575' '#1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1585#1610
        OnClick = mniFormDesignFClick
      end
      object mnu40: TMenuItem
        Caption = '-'
      end
      object mnuFormDesign53: TMenuItem
        Tag = 53
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1605#1606#1575#1587#1576#1578' '#1607#1575#1610' '#1578#1575#1585#1610#1582#1610
        OnClick = mniFormDesignFClick
      end
    end
    object mnur9: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
      object mnuN309: TMenuItem
        Tag = 7
        Caption = #1705#1575#1585#1705#1585#1583' '#1608#1575#1581#1583#1607#1575#1740' '#1575#1580#1585#1575#1740#1740
        OnClick = mnuN309Click
      end
      object mnuN310: TMenuItem
        Tag = 8
        Caption = #1705#1575#1585#1705#1585#1583' '#1608#1575#1581#1583#1607#1575#1740' '#1601#1606#1740
        OnClick = mnuN310Click
      end
      object mnuN209: TMenuItem
        Tag = 9
        Caption = #1603#1575#1585#1603#1585#1583' '#1608#1575#1581#1583' '#1587#1578#1575#1583#1740
        OnClick = mnuTshFunctionsClick
      end
      object mnuN210: TMenuItem
        Tag = 5
        Caption = #1603#1575#1585#1603#1585#1583' '#1662#1585#1587#1606#1604
        OnClick = mnuTshFunctionsClick
      end
      object mnuTshFunctionsAll: TMenuItem
        Tag = 4
        Caption = #1603#1575#1585#1603#1585#1583' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
        OnClick = mnuTshFunctionsClick
      end
      object N354: TMenuItem
        Tag = 3
        Caption = #1705#1575#1585#1705#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        OnClick = mnuTshFunctionsClick
      end
      object mnuN211: TMenuItem
        Caption = '-'
      end
      object mnuTshFunctions: TMenuItem
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583
        OnClick = mnuTshFunctionsClick
      end
      object mnuClockDmpF0: TMenuItem
        Caption = #1603#1606#1578#1585#1604' '#1608' '#1579#1576#1578' '#1578#1575#1610#1605' '#1588#1610#1578' '#1603#1575#1585#1603#1606#1575#1606
        OnClick = mnuClockDmpF0Click
      end
      object N321: TMenuItem
        Caption = #1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1576#1578#1610' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1588#1610#1606#1610
        OnClick = N321Click
      end
      object N322: TMenuItem
        Tag = 63
        Caption = #1578#1582#1589#1610#1589' '#1575#1590#1575#1601#1607' '#1603#1575#1585'/'#1578#1588#1608#1610#1602#1610
        OnClick = mniFormDesignFClick
      end
      object N323: TMenuItem
        Tag = 64
        Caption = #1578#1602#1608#1610#1605
        OnClick = mniFormDesignFClick
      end
      object mnuN207: TMenuItem
        Caption = '-'
      end
      object mnuFormDesign54: TMenuItem
        Tag = 54
        Caption = #1579#1576#1578' '#1605#1606#1575#1587#1576#1578' '#1607#1575' '#1608' '#1575#1587#1578#1579#1606#1575#1569' '#1607#1575
        OnClick = mniFormDesignFClick
      end
      object N243: TMenuItem
        Caption = '-'
      end
      object mnuTshGeneralReport: TMenuItem
        Action = mdiMainF.actTshGeneralReport
      end
    end
    object Bsell_09TimeSheet: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object mnu63: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object mnu64: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object mnu65: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object mnu66: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object mnu67: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear12: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object mnu68: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnu69: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object mnu70: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object mnu71: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object mnu72: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object mnu73: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnu74: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object mnu75: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object mnu76: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp11: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF12: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList12: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object mnu77: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object mnu78: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object mnu79: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu10StoreProc: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 627
    Top = 113
    object MenuItem65: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem66: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem67: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem68: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MenuItem77: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object MenuItem79: TMenuItem
        Caption = '-'
      end
      object MenuItem80: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object MenuItem81: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
    end
    object MenuItem82: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem85: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem97: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem149: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610'  '#1605#1608#1580#1608#1583#1610' '#1575#1608#1604' '#1583#1608#1585#1607' '
        Hint = '1'
        OnClick = Mnu_GetFirstEntityFClick
      end
    end
    object MenuItem363: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object MenuItem368: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem369: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
        OnClick = StuffGroupsF0Click
      end
      object mnuStuffGroupsAccessory5: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object mnuStuffGroupsAccessory6: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory2
      end
      object mnuCoding6: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object MenuItem384: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
      object MenuItem390: TMenuItem
        Caption = '-'
      end
      object MenuItem417: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      end
    end
    object BOM1: TMenuItem
      Caption = 'BOM'
      object MenuItem139: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604' '
        Hint = '1'
        OnClick = ConversionCoF0Click
      end
      object N316: TMenuItem
        Caption = #1604#1740#1587#1578' '#1590#1585#1575#1740#1576' '#1578#1576#1583#1740#1604
        OnClick = MenuConversionCoListClick
      end
      object N285: TMenuItem
        Caption = #1579#1576#1578' '#1570#1605#1575#1585' '#1605#1589#1585#1601' '#1576#1585' '#1575#1587#1575#1587' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578
        OnClick = N285Click
      end
    end
    object mnuItemOther10: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1575#1606#1576#1575#1585
    end
    object MenuItem563: TMenuItem
      Caption = #1605#1608#1580#1608#1583#1610' '#1608' '#1603#1575#1585#1583#1603#1587
      object mnuActRptCardexF4: TMenuItem
        Action = mdiMainF.ActRptCardexF1
      end
      object N152: TMenuItem
        Action = mdiMainF.actCardexSpecialinventory
      end
      object MenuItem577: TMenuItem
        Caption = '-'
      end
      object MenuItem579: TMenuItem
        Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575
        object mnuRptEntityStuffF1: TMenuItem
          Action = mdiMainF.actRptEntityStuffF
        end
        object MenuItem581: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1711#1585#1608#1607' '#1603#1575#1604#1575' - '#1576#1578#1601#1603#1610#1603' '#1575#1606#1576#1575#1585#1607#1575
          OnClick = RptEntityStuffGrpF0Click
        end
        object N244: TMenuItem
          Caption = '-'
        end
        object MenuItem601: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575' -'#1603#1604#1610#1607' '#1575#1606#1576#1575#1585#1607#1575
          OnClick = RptEntityStuffAllStoreClick
        end
        object MenuItem600: TMenuItem
          Caption = #1605#1608#1580#1608#1583#1610' '#1711#1585#1608#1607' '#1603#1575#1604#1575' - '#1603#1604#1610#1607' '#1575#1606#1576#1575#1585#1607#1575
          OnClick = RptEntityStuffGrpAllStoreClick
        end
      end
      object MenuItem609: TMenuItem
        Caption = #1711#1585#1583#1588' '#1603#1575#1604#1575
        object MenuItem610: TMenuItem
          Caption = #1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1606#1607#1575#1610#1610' '#1575#1606#1576#1575#1585
          OnClick = StuffTransactionF0Click
        end
        object MenuItem611: TMenuItem
          Caption = #1711#1585#1583#1588' '#1606#1607#1575#1610#1610' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = StuffGroupsTransactionClick
        end
        object N245: TMenuItem
          Caption = '-'
        end
        object MenuItem615: TMenuItem
          Caption = #1711#1585#1583#1588' '#1587#1575#1604#1610#1575#1606#1607' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
        end
        object MenuItem616: TMenuItem
          Caption = #1711#1585#1583#1588' '#1587#1575#1604#1610#1575#1606#1607' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        end
        object N246: TMenuItem
          Caption = '-'
        end
        object MenuItem620: TMenuItem
          Caption = #1711#1585#1583#1588' '#1605#1581#1583#1608#1583' '#1576#1607' '#1578#1575#1585#1610#1582' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
        end
        object MenuItem621: TMenuItem
          Caption = #1711#1585#1583#1588' '#1605#1581#1583#1608#1583' '#1576#1607' '#1578#1575#1585#1610#1582' '#1711#1585#1608#1607' '#1603#1575#1604#1575
        end
        object N247: TMenuItem
          Caption = '-'
        end
        object MenuItem625: TMenuItem
          Caption = #1711#1586#1575#1585#1588' '#1711#1585#1583#1588' '#1606#1607#1575#1610#1610' '#1575#1606#1576#1575#1585' '#1576#1578#1601#1603#1610#1603' '#1601#1585#1605
          OnClick = mnuRptReportsF192Click
        end
        object MenuItem612: TMenuItem
          Caption = #1711#1586#1575#1585#1588' '#1582#1575#1589' '#1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585' '
          OnClick = N48Click
        end
      end
      object MenuItem613: TMenuItem
        Caption = '-'
      end
      object MenuItem576: TMenuItem
        Tag = 1
        Caption = #1603#1575#1585#1583#1603#1587' '#1603#1575#1604#1575#1610' '#1603#1606#1578#1585#1604#1610
        OnClick = mnuRptControlCardexfClick
      end
    end
    object N303: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1582#1575#1589
      object N289: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1575#1606#1576#1575#1585
        OnClick = mnuRptOperationalFStoreClick
      end
      object mnuGeneralReportF7: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object N102: TMenuItem
        Caption = #1578#1581#1604#1740#1604' '#1605#1740#1586#1575#1606' '#1578#1608#1604#1740#1583' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1608' '#1605#1608#1580#1608#1583#1740
        OnClick = N102Click
      end
      object N290: TMenuItem
        Caption = #1578#1581#1604#1610#1604' '#1605#1610#1586#1575#1606' '#1578#1608#1604#1610#1583' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1608' '#1605#1608#1580#1608#1583#1610'2'
        OnClick = N290Click
      end
      object N302: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607' '#1603#1575#1604#1575#1610' '#1587#1575#1582#1578#1607' '#1588#1583#1607' '#1608' '#1570#1606#1575#1604#1610#1586' '#1605#1608#1575#1583' '#1605#1589#1585#1601#1610
        OnClick = N302Click
      end
    end
    object Bsell_10StoreProc: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
      object ProjectCard1: TMenuItem
        Caption = 'Project Card'
        OnClick = ProjectCard1Click
      end
    end
    object N360: TMenuItem
      Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740
      object MenuItem151: TMenuItem
        Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1582#1585#1608#1580#1610' '#1607#1575#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = CalculateOutPutF0Click
      end
      object N103: TMenuItem
        Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1576#1585' '#1575#1587#1575#1587' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578
        OnClick = N103Click
      end
      object MenuItem253: TMenuItem
        Caption = #1579#1576#1578' '#1603#1604#1610' '#1605#1576#1604#1594' '#1583#1585' '#1601#1585#1605#1607#1575
        OnClick = mniIncorporateClick
      end
      object MenuItem256: TMenuItem
        Caption = #1579#1576#1578' '#1603#1585#1575#1610#1607' '#1581#1605#1604' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1587#1607#1610#1605#1610
        OnClick = N175Click
      end
      object MenuItem258: TMenuItem
        Tag = 2
        Caption = ' '#1579#1576#1578' '#1570#1605#1575#1585' '#1578#1608#1604#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1605#1608#1580#1608#1583#1610' '#1608' '#1601#1585#1608#1588' '
        OnClick = mnuRptControlCardexfClick
      end
    end
    object MenuItem780: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem781: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem782: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem783: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem784: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear13: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem785: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem786: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem787: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem788: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem789: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem790: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem791: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem792: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem793: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object MenuItem794: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object MenuItem795: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object MenuItem796: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object MenuItem797: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object MenuItem798: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object MenuItem799: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object mnuHelp12: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF13: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList13: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem801: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem802: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem803: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu11WorkFlow: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 91
    Top = 205
    object vjMenuWorkFlow: TMenuItem
      Tag = -1
      Caption = #1608#1740#1688#1607
      object new1: TMenuItem
        Caption = #1578#1606#1592#1740#1605#8207#1578#1587#1578#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = new1Click
      end
    end
    object MenuItem12: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem38: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem39: TMenuItem
        Caption = '-'
      end
      object MenuItem40: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
      object MenuItem41: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
    end
    object MenuItem42: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object N318: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1662#1587#1578' '#1705#1575#1585#1576#1585#1740
        OnClick = N318Click
      end
      object N319: TMenuItem
        Caption = #1578#1606#1592#1610#1605' '#1711#1585#1583#1588' '#1601#1585#1605#1607#1575
        OnClick = N319Click
      end
      object N252: TMenuItem
        Caption = '-'
      end
      object N236: TMenuItem
        Caption = #1578#1593#1575#1585#1740#1601#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = N236Click
      end
      object SWOT5: TMenuItem
        Action = mdiMainF.actSWOT
      end
    end
    object MenuItem143: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
      object mnuMailboxdatacontrolF: TMenuItem
        Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1740' '#1705#1606#1578#1585#1604' '#1608' '#1575#1591#1604#1575#1593#1575#1578
        OnClick = mnuMailboxdatacontrolFClick
      end
      object mnuN13: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1589#1606#1583#1608#1602' '#1662#1587#1578#1740
        OnClick = mnuN13Click
      end
      object N261: TMenuItem
        Caption = '-'
      end
      object mnuMainTaskListF: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object N260: TMenuItem
        Caption = 'Task List'
        Visible = False
        OnClick = N260Click
      end
    end
    object MenuItem171: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem175: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem176: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem177: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem178: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem179: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear14: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem180: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem181: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem182: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem183: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem184: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem185: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem186: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem187: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem188: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
      end
      object mnuHelp13: TMenuItem
        Action = mdiMainF.actHelp
      end
      object N407: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object N440: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem193: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem197: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem206: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu13Store: TMainMenu
    Tag = 13
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 355
    Top = 201
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 956
    Top = 40
  end
  object Mnu14Sell: TMainMenu
    Tag = 1
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 475
    Top = 201
    object vjMenu14Sell: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem45: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem46: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem87: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object MenuItem104: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object mnuMakeDesignFormsF: TMenuItem
        Caption = 'Make Design Forms'
        OnClick = mnuMakeDesignFormsFClick
      end
      object MenuItem111: TMenuItem
        Caption = '-'
      end
      object MenuItem112: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
    end
    object MenuItem141: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem142: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem145: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578' '#1589#1608#1585#1578#1581#1587#1575#1576#1607#1575
        Hint = '1'
        OnClick = DeficitsF0Click
      end
      object MenuItem146: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem251: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem254: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1605#1585#1575#1603#1586' '#1601#1585#1608#1588
        OnClick = mniFormDesignFClick
      end
      object MenuItem257: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1606#1581#1608#1607' '#1601#1585#1608#1588' '
        OnClick = mniFormDesignFClick
      end
      object MenuItem262: TMenuItem
        Tag = 58
        Caption = #1575#1585#1578#1576#1575#1591' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606
        OnClick = mniFormDesignFClick
      end
      object MenuItem266: TMenuItem
        Tag = 60
        Caption = #1575#1585#1578#1576#1575#1591' '#1705#1575#1585#1576#1585#1575#1606' '#1576#1575' '#1711#1585#1608#1607' '#1607#1575#1740' '#1605#1588#1578#1585#1740#1575#1606
        OnClick = mniFormDesignFClick
      end
      object MenuItem275: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
        OnClick = SMServiceFEnter1Click
      end
      object N299: TMenuItem
        Caption = '-'
      end
      object N751: TMenuItem
        Tag = 75
        Caption = #1605#1593#1585#1601#1610' '#1711#1585#1608#1607' CheckList'#1607#1575
        OnClick = mniFormDesignFClick
      end
      object m76: TMenuItem
        Tag = 76
        Caption = #1605#1593#1585#1601#1610' '#1670#1705#8207#1604#1740#1587#1578#1607#1575
        OnClick = mniFormDesignFClick
      end
      object MenuItem285: TMenuItem
        Caption = '-'
      end
      object MenuItem287: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem288: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      object MenuItem296: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem303: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1740' '#1705#1575#1604#1575
        OnClick = mnuStuffGroups2FClick
      end
      object MenuItem304: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object MenuItem310: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
      object MenuItem316: TMenuItem
        Caption = '-'
      end
      object MenuItem317: TMenuItem
        Tag = 1
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = CustGroupsF0Click
      end
      object N355: TMenuItem
        Action = mdiMainF.ActCustomersF
      end
      object MenuItem324: TMenuItem
        Action = mdiMainF.actCustomers8
      end
      object MenuItem331: TMenuItem
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
        object N356: TMenuItem
          Tag = 78
          Caption = #1605#1593#1585#1601#1610' '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
          OnClick = mniFormDesignFClick
        end
        object MenuItem333: TMenuItem
          Tag = 18
          Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604#1610#1578' '#1607#1575
          OnClick = mniFormDesignFClick
        end
        object MenuItem336: TMenuItem
          Tag = 19
          Caption = #1578#1593#1585#1610#1601' '#1575#1606#1608#1575#1593' '#1662#1610#1575#1605' '#1576#1585#1575#1610' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = mniFormDesignFClick
        end
        object MenuItem337: TMenuItem
          Tag = 20
          Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = mniFormDesignFClick
        end
        object MenuItem338: TMenuItem
          Tag = 21
          Caption = #1605#1593#1585#1601#1610' '#1605#1587#1610#1585#1607#1575
          OnClick = MnuN183Click
        end
        object MenuItem339: TMenuItem
          Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1570#1583#1585#1587' '#1607#1575
          OnClick = N183Click
        end
        object MenuItem340: TMenuItem
          Caption = #1605#1593#1585#1601#1610' '#1575#1587#1578#1575#1606' '#1608' '#1588#1607#1585#1607#1575'('#1605#1575#1604#1610#1575#1578')'
          OnClick = mnuZoneFClick
        end
      end
      object MenuItem261: TMenuItem
        Action = mdiMainF.actCustomersTaxF
      end
      object MenuItem397: TMenuItem
        Caption = '-'
      end
      object MenuItem398: TMenuItem
        Caption = #1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
        OnClick = ManifestoF0Click
      end
      object MenuItem399: TMenuItem
        Caption = #1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1582#1575#1589
        OnClick = mniN166Click
      end
      object MenuItem260: TMenuItem
        Action = mdiMainF.actCustomersInterView
      end
      object N300: TMenuItem
        Caption = '-'
      end
      object actCustomerCheckListF1: TMenuItem
        Action = mdiMainF.actCustomerCheckListF
      end
      object SOWT1: TMenuItem
        Action = mdiMainF.actSWOT
      end
      object N418: TMenuItem
        Tag = 91
        Caption = #1580#1583#1608#1604' '#1662#1608#1585#1587#1575#1606#1578
        OnClick = mniFormDesignFClick
      end
    end
    object MenuItem528: TMenuItem
      Caption = #1576#1575#1586#1575#1585#1740#1575#1576#1740
      object mnuSendSMSF: TMenuItem
        Caption = #1575#1585#1587#1575#1604' '#1711#1585#1608#1607#1740' '#1662#1740#1575#1605#1705' '
        OnClick = mnuSendSMSFClick
      end
      object N97: TMenuItem
        Tag = 792
        Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1608' '#1576#1575#1586#1575#1585#1740#1575#1576#1740' '#1578#1604#1601#1606#1740
        OnClick = N97Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N106: TMenuItem
        Tag = 704
        Caption = #1604#1740#1587#1578' '#1605#1584#1575#1705#1585#1575#1578' '#1585#1608#1586#1575#1606#1607' '
        OnClick = mnuRptReportsFAllClick
      end
      object N135: TMenuItem
        Tag = 791
        Caption = #1604#1740#1587#1578' '#1605#1584#1575#1705#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1740#1575#1606
        OnClick = mnuRptReportsFAllClick
      end
      object N191: TMenuItem
        Caption = '-'
      end
      object N263: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object mnuMarketingForms: TMenuItem
        Caption = #1601#1585#1605#1607#1575#1740' '#1576#1575#1586#1575#1585#1740#1575#1576#1740
        object N301: TMenuItem
          Caption = #1575#1590#1575#1601#1607' '#1606#1605#1608#1583#1606
          OnClick = N301Click
        end
      end
    end
    object mnuItemOther14: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1601#1585#1608#1588
    end
    object MenuItem539: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
      object MenuItem544: TMenuItem
        Caption = #1578#1585#1575#1586' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = rptCustomersBalanceF1Click
      end
      object MenuItem545: TMenuItem
        Action = mdiMainF.actrptCustomersBalanceF2
      end
      object MenuItem543: TMenuItem
        Caption = '-'
      end
      object MenuItem540: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1588#1578#1585#1610#1575#1606' '
        OnClick = rptCustomerTransactionF1Click
      end
      object N72: TMenuItem
        Action = mdiMainF.actrptCustomerTrancItemsF0
      end
    end
    object MenuItem583: TMenuItem
      Tag = 8
      Caption = '&'#1711#1586#1575#1585#1588#1575#1578#8207#1601#1585#1608#1588
      object MenuItem586: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1601#1585#1608#1588' '#1585#1601#1578#1607
        object MenuItem589: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575'...'#8207
        end
        object MenuItem593: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575'...'#8207
        end
        object MenuItem595: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffF12Click
        end
        object MenuItem598: TMenuItem
          Caption = '-'
        end
        object MenuItem599: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
        object MenuItem602: TMenuItem
          Caption = #1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606'...'#8207
        end
      end
      object MenuItem606: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1601#1603#1610#1603#1610' '#1593#1605#1604#1603#1585#1583' '#1582#1575#1604#1589' '#1601#1585#1608#1588
        object MenuItem607: TMenuItem
          Tag = 1
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object MenuItem608: TMenuItem
          Tag = 2
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object MenuItem614: TMenuItem
          Tag = 3
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = AllrptRefineSellClick
        end
        object MenuItem617: TMenuItem
          Caption = '-'
        end
        object MenuItem618: TMenuItem
          Tag = 4
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = AllrptRefineSellClick
        end
        object MenuItem619: TMenuItem
          Tag = 5
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = AllrptRefineSellClick
        end
        object MenuItem622: TMenuItem
          Tag = 6
          Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1662#1603#1610#1606#1711
          OnClick = AllrptRefineSellClick
        end
      end
      object MenuItem623: TMenuItem
        Caption = '-'
      end
      object MenuItem638: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1608'  '#1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588
        object MenuItem639: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          OnClick = rptStuffGroupsMonthsF12Click
        end
        object MenuItem640: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1603#1575#1604#1575
          OnClick = rptStuffCodingMonthsF12Click
        end
        object MenuItem641: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1575#1580#1586#1575#1569' '#1603#1575#1604#1575
          OnClick = rptFormsOnStuffMonthsF12Click
        end
        object MenuItem642: TMenuItem
          Caption = '-'
        end
        object MenuItem643: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' '
          OnClick = RptReciptWithGrpCustMonthsF12Click
        end
        object MenuItem644: TMenuItem
          Caption = #1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
          OnClick = RptReciptWithCustMonthsF12Click
        end
      end
      object MenuItem666: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1607#1610#1575#1606#1607' '#1601#1585#1608#1588
        OnClick = rptanalyzSellsClick
      end
      object MenuItem667: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610' '#1601#1585#1608#1588' '#1603#1575#1604#1575' '#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1610
        OnClick = mnuSPSellCustClick
      end
      object MenuItem668: TMenuItem
        Caption = '-'
      end
      object MenuItem669: TMenuItem
        Action = mdiMainF.actGeneralReportF
      end
      object MenuItem670: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1576#1575#1586#1575#1585#1740#1575#1576#1740' '#1608' '#1601#1585#1608#1588
        OnClick = mnuRptOperationalFStoreClick
      end
      object MenuItem603: TMenuItem
        Caption = '-'
      end
      object MenuItem675: TMenuItem
        Action = mdiMainF.actDailyWorkF1
      end
      object MenuItem676: TMenuItem
        Action = mdiMainF.actSearchRecipts
      end
    end
    object BSell_14Marketing: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem697: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem698: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        ImageIndex = 7
        OnClick = OperatorsClick
      end
      object MenuItem699: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem700: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem701: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ImageIndex = 8
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear15: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem702: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem703: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem704: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem705: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem706: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem709: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem712: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem714: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem716: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object MenuItem717: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object MenuItem718: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object MenuItem719: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object MenuItem720: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object MenuItem721: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object MenuItem722: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object MenuItem723: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF15: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList15: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem724: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem725: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem726: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object mnu15Assets: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 603
    Top = 207
    object vjMenuAssets: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem44: TMenuItem
        Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578' '#1602#1583#1610#1605' '#1576#1607' '#1580#1583#1610#1583
        Hint = '1'
      end
      object MenuItem47: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1606#1575#1605' '#1588#1585#1603#1578
        OnClick = N42Click
      end
      object MenuItem48: TMenuItem
        Caption = #1579#1576#1578' '#1583#1587#1578#1585#1587#1740' '#1588#1593#1576' '#1576#1585#1575#1740' '#1705#1575#1585#1576#1585#1575#1606
      end
    end
    object MenuItem86: TMenuItem
      Caption = #1605#1583#1610#1585' &'#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem147: TMenuItem
        Action = mdiMainF.actAmvalCalc
      end
      object MnuGetFirstDepTable: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1587#1578#1607#1604#1575#1705' '#1587#1575#1604' '#1602#1576#1604
        OnClick = MnuGetFirstDepTableClick
      end
      object MenuItem159: TMenuItem
        Caption = '-'
      end
      object MenuItem189: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem164: TMenuItem
        Caption = #1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        OnClick = RestoreDataBaseClick
      end
      object MenuItem153: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610
        object MenuItem154: TMenuItem
          Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1740' '#1608' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1740
        end
        object N25631: TMenuItem
          Caption = #1575#1740#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1740
        end
      end
      object N216: TMenuItem
        Caption = '-'
      end
      object MenuItem152: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
        OnClick = SMServiceFEnter1Click
      end
      object MenuItem148: TMenuItem
        Action = mdiMainF.actAssetsConfig
      end
    end
    object mnuInfo: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
    end
    object MenuItem284: TMenuItem
      Caption = '&'#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1605#1608#1575#1604
      object mnuKartDarayi: TMenuItem
        Action = mdiMainF.actKartDarayi
      end
      object mnuRptAmval: TMenuItem
        Action = mdiMainF.actRptAmval
      end
      object MenuItem298: TMenuItem
        Caption = '-'
      end
      object mnuExpense: TMenuItem
        Action = mdiMainF.actExpense
      end
      object MenuItem300: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1593#1605#1610#1585#1575#1578' '#1575#1587#1575#1587#1610
        OnClick = MenuItem300Click
      end
      object MenuItem301: TMenuItem
        Caption = '-'
      end
      object mnuSumCard: TMenuItem
        Action = mdiMainF.actSubCard
      end
      object MenuItem305: TMenuItem
        Caption = '-'
      end
      object mnuDecrease: TMenuItem
        Action = mdiMainF.actDecrease
      end
      object MenuItem321: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1608#1588' '#1608' '#1576#1585#1603#1606#1575#1585#1610
        OnClick = MenuItem321Click
      end
      object MenuItem329: TMenuItem
        Caption = '-'
      end
      object mnuMovement: TMenuItem
        Action = mdiMainF.actMovement
      end
      object mnuN11: TMenuItem
        Caption = #1604#1740#1587#1578' '#1606#1602#1604' '#1608' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1585#1575#1574#1740#1607#1575
        OnClick = mnuN11Click
      end
      object MenuItem359: TMenuItem
        Action = mdiMainF.actBerakAmval
      end
      object MenuItem378: TMenuItem
        Caption = '-'
      end
      object MenuItem380: TMenuItem
        Action = mdiMainF.actRevalidate
      end
      object MenuItem381: TMenuItem
        Caption = #1578#1593#1583#1610#1604#1575#1578' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578
        object MenuItem383: TMenuItem
          Action = mdiMainF.actAlterAmval
        end
        object MenuItem394: TMenuItem
          Action = mdiMainF.actAlterAssets
        end
      end
      object MenuItem395: TMenuItem
        Caption = '-'
      end
      object MenuItem396: TMenuItem
        Caption = #1662#1608#1588#1588' '#1576#1610#1605#1607' '#1575#1610' '#1583#1575#1585#1575#1610#1610' '#1607#1575
        object MenuItem400: TMenuItem
          Action = mdiMainF.actInsouraceGroups
        end
        object MenuItem401: TMenuItem
          Action = mdiMainF.actSpecialInsourance
        end
      end
    end
    object mnuAssetsReport: TMenuItem
      Caption = '&'#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem402: TMenuItem
      Caption = #1587#1610#1587#1578#1605' '
      Hint = '1'
      object MenuItem403: TMenuItem
        Caption = #1605#1593#1585#1601#1610' &'#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem404: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        OnClick = changeUserClick
      end
      object MenuItem405: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        OnClick = AddToolbarClick
      end
      object MenuItem406: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610' '
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear16: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem407: TMenuItem
        Caption = '-'
      end
      object MenuItem408: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        OnClick = MakeBackUpF0Click
      end
      object MenuItem413: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem415: TMenuItem
        Caption = '-'
      end
      object MenuItem463: TMenuItem
        Caption = #1662#1606#1580#1585#1607' '#1607#1575
        object MenuItem464: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          OnClick = Cascade0Click
        end
        object MenuItem468: TMenuItem
          Caption = #1603#1575#1588#1610
          OnClick = Tile0Click
        end
      end
      object MenuItem491: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF16: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList16: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem492: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607
        OnClick = aboutF0Click
      end
      object MenuItem496: TMenuItem
        Caption = '-'
      end
      object MenuItem519: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        GroupIndex = 1
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu16Laboratory: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 91
    Top = 295
    object MenuItem224: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem225: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem252: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem409: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MenuItem412: TMenuItem
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp1Click
      end
      object MenuItem523: TMenuItem
        Caption = '-'
      end
      object MenuItem524: TMenuItem
        Tag = 34
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
      object MenuItem525: TMenuItem
        Tag = 35
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = mniFormDesignFClick
      end
    end
    object MenuItem526: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem527: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578
        Hint = '1'
        OnClick = LookUp2Click
      end
      object MenuItem529: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1606#1575#1608#1610#1606' '#1605#1608#1579#1585' '#1576#1585' '#1582#1585#1610#1583' '#1582#1575#1589
        Hint = '1'
        OnClick = N11Click
      end
      object MenuItem530: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem531: TMenuItem
        Action = mdiMainF.actRpt001F0
      end
      object MenuItem532: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem533: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
        Hint = '1'
        OnClick = CommandUpDateClick
      end
      object MenuItem534: TMenuItem
        Caption = '-'
      end
      object MenuItem535: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem536: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
      object MenuItem537: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575' '#1608' '#1576#1606#1711#1575#1607#1607#1575
        OnClick = StoresF0Click
      end
      object MenuItem538: TMenuItem
        Tag = 8
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
        OnClick = StuffGroupsF0Click
      end
      object MenuItem541: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory1
      end
      object MenuItem542: TMenuItem
        Action = mdiMainF.actStuffGroupsAccessory2
      end
      object MenuItem546: TMenuItem
        Caption = #1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575'2'
        OnClick = mnuStuffGroups2FClick
      end
      object MenuItem547: TMenuItem
        Tag = 8
        Action = mdiMainF.actCoding
      end
      object MenuItem548: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      end
      object MenuItem549: TMenuItem
        Tag = 8
        Caption = #1608#1575#1581#1583#1607#1575#1610' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
        OnClick = UnitsF0Click
      end
    end
    object MenuItem550: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1575#1588#1582#1575#1589'/'#1605#1585#1575#1603#1586
      object MenuItem551: TMenuItem
        Tag = 2
        Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1575#1588#1582#1575#1589' '#1608' '#1605#1585#1575#1603#1586
        OnClick = CustGroupsF0Click
      end
      object MenuItem567: TMenuItem
        Caption = '-'
      end
      object MenuItem570: TMenuItem
        Action = mdiMainF.ActCustomersF
      end
      object MenuItem571: TMenuItem
        Tag = 4
        Caption = #1601#1585#1608#1588#1606#1583#1711#1575#1606' '#1583#1575#1582#1604#1740' '
        HelpContext = 4
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object MenuItem584: TMenuItem
        Action = mdiMainF.actSellersF10
      end
      object MenuItem605: TMenuItem
        Tag = 12
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1601#1585#1605#1575#1610#1575#1606
        HelpContext = 12
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object MenuItem624: TMenuItem
        Tag = 13
        Caption = #1605#1593#1585#1601#1610' '#1662#1740#1605#1575#1606#1705#1575#1585#1575#1606
        HelpContext = 13
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object MenuItem632: TMenuItem
        Tag = 14
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1575#1608#1585#1575#1606
        HelpContext = 14
        Hint = 'ValidGroupType'
        OnClick = mnuSellersFAllClick
      end
      object MenuItem633: TMenuItem
        Caption = '-'
      end
      object MenuItem636: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1576#1575#1606#1603#1607#1575
        HelpContext = 1
        Hint = 'ValidGroupType'
        OnClick = CompanyBankAccountsF0Click
      end
      object MenuItem637: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1578#1587#1607#1610#1604#1575#1578' '#1583#1607#1606#1583#1711#1575#1606
        HelpContext = 7
        Hint = 'ValidGroupType'
        OnClick = OtherCustomerF7Click
      end
      object MenuItem645: TMenuItem
        Caption = '-'
      end
      object MenuItem646: TMenuItem
        Tag = 11
        Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
        HelpContext = 11
        Hint = 'ValidGroupType'
        OnClick = mnuOfficeCustomerFAllClick
      end
      object MenuItem647: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1589#1606#1583#1608#1602#1583#1575#1585#1607#1575
        HelpContext = 2
        Hint = 'ValidGroupType'
        OnClick = CashiersF0Click
      end
      object MenuItem648: TMenuItem
        Tag = 17
        Caption = #1605#1593#1585#1601#1610' '#1705#1575#1585#1662#1585#1583#1575#1586#1575#1606' '
        HelpContext = 17
        Hint = 'ValidGroupType'
        OnClick = mnuAllotherCustomerFClick
      end
      object MenuItem649: TMenuItem
        Caption = '-'
      end
      object MenuItem650: TMenuItem
        Action = mdiMainF.actCustomers8
      end
      object MenuItem651: TMenuItem
        Action = mdiMainF.actCustomersF9
      end
      object MenuItem652: TMenuItem
        Caption = '-'
      end
      object MenuItem653: TMenuItem
        Action = mdiMainF.actOfficeCustomerF
      end
      object MenuItem654: TMenuItem
        Tag = 16
        Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1711#1575#1607#1607#1575
        HelpContext = 16
        Hint = 'ValidGroupType'
        ImageIndex = 46
        OnClick = mnuOfficeCustomerFAllClick
      end
      object MenuItem655: TMenuItem
        Tag = 15
        Caption = #1604#1610#1587#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = otherCustomerF0Click
      end
      object MenuItem656: TMenuItem
        Action = mdiMainF.actotherCustomerF6
      end
      object MenuItem657: TMenuItem
        Tag = 3
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1587#1585#1601#1589#1604#1607#1575'/'#1607#1586#1740#1606#1607
        HelpContext = 3
        Hint = 'ValidGroupType'
        OnClick = otherCustomerF0Click
      end
      object MenuItem658: TMenuItem
        Tag = 18
        Caption = #1605#1593#1585#1601#1740' '#1601#1585#1570#1740#1606#1583#1607#1575
        HelpContext = 18
        Hint = 'ValidGroupType'
        OnClick = otherCustomerF0Click
      end
      object MenuItem659: TMenuItem
        Caption = '-'
      end
      object mnuUseUnitsNew3: TMenuItem
        Tag = 22
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'*'
        OnClick = mnuOfficeCustomerFAllClick
      end
      object MenuItem660: TMenuItem
        Tag = 8
        Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601'X'
        OnClick = UseUnitsF0Click
      end
      object MenuItem661: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
        OnClick = NUseOthersClick
      end
      object MenuItem662: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610' '#1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576
      end
      object MenuItem663: TMenuItem
        Caption = '-'
      end
      object MenuItem664: TMenuItem
        Caption = #1578#1594#1740#1740#1585' '#1705#1583#1607#1575#1740' '#1605#1588#1578#1585#1740' '#1576#1607' '#1705#1583' '#1580#1583#1740#1583
        ShortCut = 16456
        OnClick = mnuChangeCustIDFClick
      end
    end
    object MenuItem665: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
    end
    object MenuItem671: TMenuItem
      Caption = #1570#1586#1605#1575#1740#1588#1711#1575#1607
      object MenuItem673: TMenuItem
        Caption = '-'
      end
      object N394: TMenuItem
        Tag = 10
        Caption = #1705#1575#1585#1705#1585#1583
        OnClick = mnuTshFunctionsClick
      end
    end
    object MenuItem678: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem679: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem680: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem681: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem682: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem683: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear17: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem684: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem685: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem686: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem687: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem688: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem689: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem690: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem691: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem692: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object MenuItem693: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object MenuItem694: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object MenuItem695: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object MenuItem696: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object MenuItem727: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object MenuItem730: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
      end
      object MenuItem750: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF17: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList17: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem751: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem770: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem774: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu17Acc: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 227
    Top = 295
    object MnuAcc_vjMenu_acc: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607' '
      Hint = '1'
      Visible = False
      object MnuAcc_AccTopicLevel: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1591#1608#1581' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575' '
        Hint = '1'
        OnClick = MnuAcc_AccTopicLevelClick
      end
      object MnuAcc_ActDocTypesF1: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575
        Hint = '1'
        OnClick = MnuAcc_ActDocTypesF1Click
      end
      object MnuAcc_ActFormInfo1F1: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1601#1585#1605#1607#1575' '
        Hint = '1'
        OnClick = MnuAcc_ActFormInfo1F1Click
      end
      object MnuAcc_N50: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1578#1585#1575#1586' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuAcc_N50Click
      end
      object MnuAcc_N4: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MnuAcc_CleanDataBase: TMenuItem
        Caption = '&'#1662#1575#1603#1587#1575#1586#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
        OnClick = MnuAcc_CleanDataBaseClick
      end
      object MnuAcc_mnuvije: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1606#1575#1605' '#1588#1585#1603#1578'&'
        Hint = '1'
        OnClick = MnuAcc_mnuvijeClick
      end
      object MnuAcc_actCnPrefixWizard: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuAcc_MangeAcc: TMenuItem
      Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuAcc_Companies: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1588#1593#1576' '#1608' '#1588#1585#1603#1578#1607#1575' '
        OnClick = MnuAcc_CompaniesClick
      end
      object MnuAcc_ImportDocGroups: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576
        OnClick = MnuAcc_ImportDocGroupsClick
      end
      object MnuAcc_N44: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuEftetamieh: TMenuItem
        Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1575#1601#1578#1578#1575#1581#1610#1607' '
        OnClick = MnuAcc_MnuEftetamiehClick
      end
      object MnuAcc_EndExpence: TMenuItem
        Caption = #1576#1587#1578#1606' '#1581#1587#1575#1576#1607#1575#1610' '#1605#1608#1602#1578
        OnClick = MnuAcc_EndExpenceClick
      end
      object MnuAcc_MnuEkhtetamieh: TMenuItem
        Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1575#1582#1578#1578#1575#1605#1610#1607' '
        OnClick = MnuAcc_MnuEkhtetamiehClick
      end
      object MnuAcc_N27: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N134: TMenuItem
        Caption = #1575#1583#1594#1575#1605' '#1575#1587#1606#1575#1583
        OnClick = MnuAcc_N134Click
      end
      object MnuAcc_N13: TMenuItem
        Caption = '-'
      end
      object MnuAcc_ConfigAcc: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1587#1575#1576#1583#1575#1585#1740' '
        Hint = '1'
        OnClick = MnuAcc_ConfigAccClick
      end
    end
    object MnuAcc_MnuAccCoding: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575
      object MnuAcc_MnuCategories_1: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1608' '#1578#1583#1608#1610#1606' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575
      end
      object MnuAcc_MnuAccCode2_2: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1608' '#1578#1583#1608#1610#1606' '#1581#1587#1575#1576#1607#1575#1610' '#1603#1604
      end
      object MnuAcc_actCode2: TMenuItem
        Action = mdiMainF.actAccCode2
      end
      object MnuAcc_Mnu_AccCode3: TMenuItem
        Tag = -1
        Caption = #1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610
        Visible = False
        OnClick = MnuAcc_Mnu_AccCode3Click
      end
      object MnuAcc_N1: TMenuItem
        Caption = '-'
      end
      object MnuAcc__DetailGroup: TMenuItem
        Caption = #1711#1585#1608#1607' '#1607#1575#1610'  '#1578#1601#1589#1610#1604#1610
        OnClick = MnuAcc__DetailGroupClick
      end
      object MnuAcc_Details: TMenuItem
        Tag = 111
        Action = mdiMainF.actDetails
      end
      object MnuAcc_N17: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N124: TMenuItem
        Caption = #1583#1585#1582#1578#1608#1575#1585#1607' '#1705#1583#1740#1606#1711
        OnClick = MnuAcc_N124Click
      end
    end
    object MnuAcc_AllDocuments: TMenuItem
      Caption = #1587#1606#1583#1581#1587#1575#1576#1583#1575#1585#1610
      object MnuAcc_Document: TMenuItem
        Action = mdiMainF.actDoc
      end
      object MnuAcc_DocGroup: TMenuItem
        Action = mdiMainF.actListDocs
      end
      object N402: TMenuItem
        Caption = '-'
      end
      object N389: TMenuItem
        Caption = #1579#1576#1578' '#1587#1606#1583' '#1587#1740#1587#1578#1605#1740
        object N397: TMenuItem
          Caption = #1582#1586#1575#1606#1607' '#1583#1575#1585#1740
          object N401: TMenuItem
            Caption = '&'#1608#1580#1608#1607' '#1608' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1576#1575#1606#1603#1610
            OnClick = MakeDocumentCofferF0Click
          end
          object N399: TMenuItem
            Caption = '&'#1583#1585#1610#1575#1601#1578' '#1608' '#1589#1583#1608#1585' '#1670#1603
            OnClick = MakeDocumentCheckF0Click
          end
        end
        object N396: TMenuItem
          Caption = '&'#1575#1606#1576#1575#1585' '#1608#1601#1585#1608#1588' '
          OnClick = MakeDocumentF0Click
        end
        object N395: TMenuItem
          Tag = 1
          Caption = #1578#1593#1583#1610#1604#1575#1578' '#1575#1606#1576#1575#1585
          OnClick = MakeDocumentF0Click
        end
        object N421: TMenuItem
          Caption = #1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
          object N432: TMenuItem
            Caption = #1589#1583#1608#1585' '#1587#1606#1583#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
            OnClick = MnuPay_N19Click
          end
          object N425: TMenuItem
            Caption = #1589#1583#1608#1585' '#1587#1606#1583#1579#1576#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '
            OnClick = MnuPay_N75Click
          end
          object N422: TMenuItem
            Caption = #1589#1583#1608#1585' '#1587#1606#1583#1605#1575#1605#1608#1585#1610#1578' '#1607#1575#1610' '#1582#1575#1589
            OnClick = MnuPay_NMakeDocumentMissionFClick
          end
        end
        object N434: TMenuItem
          Caption = #1583#1575#1585#1575#1574#1740' '#1579#1575#1576#1578
          object N442: TMenuItem
            Action = mdiMainF.actAssetsMakeDocument
          end
          object N439: TMenuItem
            Action = mdiMainF.actAssetsCleanDoc
          end
        end
      end
      object MnuAcc_N73: TMenuItem
        Caption = '-'
      end
      object N478: TMenuItem
        Action = mdiMainF.actrptElectronicsBooksF
      end
      object N480: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuMonthDocs: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1575#1587#1606#1575#1583' '#1605#1575#1607#1610#1575#1606#1607' '
        OnClick = MnuAcc_MnuMonthDocsClick
      end
      object MnuAcc_MnuDailyDocs: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1575#1587#1606#1575#1583' '#1585#1608#1586#1575#1606#1607' '
        OnClick = MnuAcc_MnuDailyDocsClick
      end
      object MnuAcc_N7: TMenuItem
        Caption = '-'
      end
      object MnuAcc_actCnPrefixWizard5: TMenuItem
        Action = mdiMainF.actSearchDocs
      end
      object MnuAcc_N11: TMenuItem
        Caption = '-'
      end
      object MnuAcc_DescTemp: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1588#1585#1581' '#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        OnClick = MnuAcc_DescTempClick
      end
      object MnuAcc_DocTypes: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
        OnClick = MnuAcc_DocTypesClick
      end
    end
    object MnuAcc_Offices: TMenuItem
      Caption = '&'#1583#1601#1575#1578#1585
      object MnuAcc_MnuAccBook_1: TMenuItem
        Caption = #1583#1601#1578#1585' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575' '
      end
      object MnuAcc_MnuAccBook_2: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1603#1604' '
      end
      object MnuAcc_actCnPrefixWizard6: TMenuItem
        Action = mdiMainF.actRpt_AccBook
      end
      object MnuAcc_MnuAccBook_4: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
      end
      object MnuAcc_N24: TMenuItem
        Caption = '-'
      end
      object MnuAcc_actBooksDetail: TMenuItem
        Action = mdiMainF.actRpt_AccDetailOnTopicBook
      end
      object MnuAcc_N25: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuAllCtopicsBook: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1583#1608
        object MnuAcc_Mnu_RptCtopicBookOnAcc: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576' '
          OnClick = MnuAcc_Mnu_RptCtopicBookOnAccClick
        end
        object MnuAcc_Mnu_RptCtopicBookOnDetail: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
          OnClick = MnuAcc_Mnu_RptCtopicBookOnDetailClick
        end
      end
      object MnuAcc_OfficeCtopic2: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1587#1607
        object MnuAcc_aa1: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576' '
          OnClick = MnuAcc_aa1Click
        end
        object MnuAcc_N42: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
          OnClick = MnuAcc_N42Click
        end
      end
      object MnuAcc_N188: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1670#1607#1575#1585
        object MnuAcc_N189: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576' '
          OnClick = MnuAcc_N189Click
        end
        object MnuAcc_N190: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
          OnClick = MnuAcc_N190Click
        end
      end
      object MnuAcc_N29: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N30: TMenuItem
        Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuAcc_N30Click
      end
      object MnuAcc_N70: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuLow: TMenuItem
        Caption = #1583#1601#1575#1578#1585' '#1602#1575#1606#1608#1606#1610' - '#1608#1586#1575#1585#1578' '#1583#1575#1585#1575#1574#1610
        object MnuAcc_MnuGeneralJornal: TMenuItem
          Caption = #1583#1601#1578#1585' '#1585#1608#1586#1606#1575#1605#1607' '#1593#1605#1608#1605#1610
          OnClick = MnuAcc_MnuGeneralJornalClick
        end
        object MnuAcc_MnuLedger: TMenuItem
          Caption = #1583#1601#1578#1585' '#1581#1587#1575#1576' '#1603#1604' '
          OnClick = MnuAcc_MnuLedgerClick
        end
        object MnuAcc_N46: TMenuItem
          Caption = #1583#1601#1578#1585' '#1603#1604' '#1575#1587#1606#1575#1583' '#1585#1608#1586#1575#1606#1607
          Enabled = False
          Visible = False
        end
      end
      object N474: TMenuItem
        Action = mdiMainF.actrptElectronicsBooksF
      end
    end
    object MnuAcc_MnuTrialBalance: TMenuItem
      Caption = #1578#1585#1575#1586' '#1570#1586#1605#1575#1610#1588#1610
      object MnuAcc_MnuTRialBalanceAcc_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575' '
      end
      object MnuAcc_MnuTRialBalanceAcc_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1603#1604
        Hint = #1578#1585#1575#1586' '#1570#1586#1605#1575#1610#1588#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1603#1604
        ImageIndex = 2
      end
      object MnuAcc_MnuTRialBalanceAcc_3: TMenuItem
        Caption = #1578#1585#1575#1586' '#1581#1587#1575#1576
        Hint = #1578#1585#1575#1586' '#1570#1586#1605#1575#1610#1588#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1581#1587#1575#1576
        ImageIndex = 3
      end
      object MnuAcc_MnuTRialBalanceAcc_4: TMenuItem
        Caption = #1578#1585#1575#1586' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
        OnClick = MnuAcc_MnuTRialBalanceAcc_4Click
      end
      object MnuAcc_N38: TMenuItem
        Caption = '-'
      end
      object MnuAcc_TarazDetail: TMenuItem
        Action = mdiMainF.actTarazDetail
      end
      object MnuAcc_N40: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuTRialBalanceCtopic_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1583#1608
        object MnuAcc_N112: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576
          OnClick = MnuAcc_N112Click
        end
        object MnuAcc_N130: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1578#1601#1589#1610#1604#1610
          OnClick = MnuAcc_N130Click
        end
      end
      object MnuAcc_MnuTRialBalanceCtopic_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1587#1607
        object MnuAcc_N113: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576' '
          OnClick = MnuAcc_N113Click
        end
        object MnuAcc_N109: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1578#1601#1589#1740#1604#1740' 1 '#1608' 2'
          OnClick = MnuAcc_N109Click
        end
      end
      object MnuAcc_N123: TMenuItem
        Caption = #1578#1585#1575#1586' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' '#1670#1607#1575#1585
        object MnuAcc_N187: TMenuItem
          Caption = #1583#1585#1587#1591#1581' '#1581#1587#1575#1576
          OnClick = MnuAcc_N187Click
        end
        object MnuAcc_N1210: TMenuItem
          Caption = #1583#1585' '#1587#1591#1581' '#1578#1601#1589#1740#1604#1740' 1 '#1608' 2, 3'
          OnClick = MnuAcc_N1210Click
        end
      end
      object MnuAcc_N41: TMenuItem
        Caption = '-'
      end
      object MnuAcc_rptAnalyzeBalance: TMenuItem
        Action = mdiMainF.actrptAnalyzeBalance
      end
      object MnuAcc_specialTrialBalance: TMenuItem
        Action = mdiMainF.actSpecialTrialBalance
      end
      object MnuAcc_N185: TMenuItem
        Caption = #1578#1585#1575#1586' '#1605#1575#1578#1585#1740#1587#1740' '#1581#1587#1575#1576' '#1607#1575
        OnClick = MnuAcc_N185Click
      end
      object MnuRptTrialBalance_AccFin: TMenuItem
        Caption = #1578#1585#1575#1586' '#1605#1593#1740#1606' '#1576#1585' '#1575#1587#1575#1587' '#1705#1583#1740#1606#1711' '#1589#1608#1585#1578' '#1605#1575#1604#1740
        OnClick = MnuRptTrialBalance_AccFinClick
      end
    end
    object MnuAcc_MnuTrialBalance_SomeClumn: TMenuItem
      Caption = #1578#1585#1575#1586' '#1670#1606#1583' '#1587#1578#1608#1606#1610
      object MnuAcc_MnuBalace_SomeColumn_acc_1_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_1_1Click
      end
      object MnuAcc_MnuBalace_SomeColumn_acc_1_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_1_2Click
      end
      object MnuAcc_MnuBalace_SomeColumn_acc_1_3: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_1_3Click
      end
      object MnuAcc_N3: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuBalace_SomeColumn_acc_2_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1603#1604' '
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_2_1Click
      end
      object MnuAcc_MnuBalace_SomeColumn_acc_2_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1603#1604
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_2_2Click
      end
      object MnuAcc_MnuBalace_SomeColumn_acc_2_3: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1603#1604' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607
        OnClick = MnuAcc_MnuBalace_SomeColumn_acc_2_3Click
      end
      object MnuAcc_N2: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N12: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1587#1585#1601#1589#1604' '#1607#1575#1610' '#1581#1587#1575#1576' '#1605#1593#1740#1606
        OnClick = MnuAcc_N12Click
      end
      object MnuAcc_N21: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1587#1585#1601#1589#1604' '#1607#1575#1610' '#1581#1587#1575#1576' '#1605#1593#1740#1606
        OnClick = MnuAcc_N21Click
      end
      object MnuAcc_N31: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1587#1585#1601#1589#1604' '#1607#1575#1610' '#1581#1587#1575#1576' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607' '
        OnClick = MnuAcc_N31Click
      end
      object MnuAcc_N181: TMenuItem
        Caption = '-'
      end
      object MnuAcc_BalanceLevel4_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1740' '#1587#1585#1601#1589#1604' '#1607#1575#1740' '#1605#1593#1740#1606' '#1583#1608
        OnClick = MnuAcc_BalanceLevel4_1Click
      end
      object MnuAcc_BalanceLevel4_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1740' '#1587#1585#1601#1589#1604' '#1607#1575#1740' '#1605#1593#1740#1606' '#1583#1608
        OnClick = MnuAcc_BalanceLevel4_2Click
      end
      object MnuAcc_BalanceLevel4_3: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1740' '#1587#1585#1601#1589#1604' '#1607#1575#1740' '#1605#1593#1740#1606' '#1583#1608' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1740#1607
        OnClick = MnuAcc_BalanceLevel4_3Click
      end
      object MnuAcc_N5: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuBalace_SomeColumn_Detail_1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '
        OnClick = MnuAcc_MnuBalace_SomeColumn_Detail_1Click
      end
      object MnuAcc_MnuBalace_SomeColumn_Detail_2: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '
        OnClick = MnuAcc_MnuBalace_SomeColumn_Detail_2Click
      end
      object MnuAcc_MnuBalace_SomeColumn_Detail_3: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607
        OnClick = MnuAcc_MnuBalace_SomeColumn_Detail_3Click
      end
      object MnuAcc_N129: TMenuItem
        Caption = '-'
      end
      object MnuAcc_Ctopic: TMenuItem
        Tag = 1
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' 2'
        OnClick = MnuAcc_CtopicClick
      end
      object MnuAcc_N131: TMenuItem
        Tag = 2
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' 2'
      end
      object MnuAcc_N132: TMenuItem
        Tag = 3
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1740#1604#1740' '#1587#1591#1581' 2 - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607
      end
      object MnuAcc_N194: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N196: TMenuItem
        Caption = #1578#1585#1575#1586' '#1607#1588#1578' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '#1705#1604
        OnClick = MnuAcc_N196Click
      end
      object MnuAcc_N197: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610'  '#1705#1604
        OnClick = MnuAcc_N197Click
      end
      object MnuAcc_N198: TMenuItem
        Caption = #1578#1585#1575#1586' '#1583#1607' '#1587#1578#1608#1606#1610' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' - '#1576#1583#1608#1606' '#1575#1601#1578#1578#1575#1581#1610#1607' '#1705#1604
        OnClick = MnuAcc_N198Click
      end
    end
    object MnuAcc_Systems: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuAcc_MnuUserList: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        GroupIndex = 1
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuAcc_N52: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        GroupIndex = 1
        OnClick = MnuAcc_N52Click
      end
      object MnuAcc_MnuIcon: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        GroupIndex = 1
        OnClick = AddToolbarClick
      end
      object MnuAcc_actCnPrefixWizard11: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
        GroupIndex = 1
      end
      object N483: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_MnuChooseMalyYear: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610' '
        GroupIndex = 1
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear18: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        GroupIndex = 1
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuAcc_N33: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_MnuAllBackUp: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '
        GroupIndex = 1
        object MnuAcc_MnuBackUp: TMenuItem
          Caption = ' '#1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          OnClick = MnuAcc_MnuBackUpClick
        end
        object MnuAcc_MnuBackUpCd: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' CD'
          OnClick = MnuAcc_MnuBackUpCdClick
        end
        object MnuAcc_N14: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1575#1586' '#1587#1575#1604' '#1605#1575#1604#1610
          Visible = False
          OnClick = MnuAcc_N14Click
        end
      end
      object MnuAcc_MnuOption: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        GroupIndex = 1
        OnClick = MnuAcc_MnuOptionClick
      end
      object MnuAcc_N35: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_MnuWindow: TMenuItem
        Caption = '&'#1662#1606#1580#1585#1607#8204#1607#1600#1600#1600#1600#1600#1575
        GroupIndex = 1
        object MnuAcc_MnuTogether: TMenuItem
          Caption = '&'#1585#1608#1610' '#1607#1605
        end
        object MnuAcc_Kashi: TMenuItem
          Caption = '&'#1603#1575#1588#1610
        end
      end
      object MnuAcc_actCnPrefixWizard12: TMenuItem
        Action = mdiMainF.actHelp
        GroupIndex = 1
      end
      object N456: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object N441: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        OnClick = MnuFeedBackListClick
      end
      object MnuAcc_MnuAbout: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'
        GroupIndex = 1
        OnClick = MnuAcc_MnuAboutClick
      end
      object MnuAcc_N19: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_MnuClose: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        GroupIndex = 1
        Hint = '1'
        OnClick = MnuAcc_MnuCloseClick
      end
    end
  end
  object Mnu18Budget: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 347
    Top = 287
    object MnuAcc_vjMenu_budject: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607' '
      Hint = '1'
      Visible = False
      object MnuAcc_119: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1591#1608#1581' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575' '
        Hint = '1'
        OnClick = MnuAcc_119Click
      end
      object MnuAcc_120: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575
        Hint = '1'
      end
      object MnuAcc_121: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1601#1585#1605#1607#1575' '
        Hint = '1'
      end
      object MnuAcc_122: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MnuAcc_123: TMenuItem
        Caption = '&'#1662#1575#1603#1587#1575#1586#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
      end
      object MnuAcc_124: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuAcc_actCnPrefixWizard15: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuAcc_BudgetMange: TMenuItem
      Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuAcc_MnuBudgetLevel: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1591#1608#1581' '#1576#1608#1583#1580#1607' '#1608#1591#1585#1581
        OnClick = MnuAcc_MnuBudgetLevelClick
      end
      object MnuAcc_N28: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1583#1580#1607' '
        OnClick = MnuAcc_N28Click
      end
      object MnuAcc_125: TMenuItem
        Caption = '-'
      end
      object MnuAcc_126: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1588#1593#1576' '#1608' '#1588#1585#1603#1578#1607#1575' '
      end
      object MnuAcc_N68: TMenuItem
        Caption = '-'
      end
      object MnuAcc_Sanama: TMenuItem
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1606#1575#1605#1575
        object MnuAcc_ContrastAccountSanama: TMenuItem
          Caption = #1589#1608#1585#1578' '#1605#1594#1575#1740#1585#1578' '#1576#1575#1606#1705#1740
          OnClick = MnuAcc_ContrastAccountSanamaClick
        end
        object MnuAcc_SendSanama: TMenuItem
          Caption = #1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1607' '#1587#1606#1575#1605#1575
          OnClick = MnuAcc_SendSanamaClick
        end
      end
    end
    object MnuAcc_BudgetCoding: TMenuItem
      Caption = #1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607' '
      object MnuAcc_127: TMenuItem
        Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607' '#1575#1610
        OnClick = MnuAcc_127Click
      end
    end
    object MnuAcc_Utility: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
      object MnuAcc_N175: TMenuItem
        Caption = #1576#1608#1583#1580#1607' '#1605#1589#1608#1576
        OnClick = MnuAcc_N175Click
      end
      object MnuAcc_j1: TMenuItem
        Caption = #1578#1593#1607#1583#1575#1578
        OnClick = MnuAcc_j1Click
      end
      object MnuAcc_N178: TMenuItem
        Caption = #1578#1576#1583#1740#1604' '#1601#1575#1602#1583' '#1575#1593#1578#1576#1575#1585' '#1576#1607' '#1575#1593#1578#1576#1575#1585#1740
        OnClick = MnuAcc_N178Click
      end
      object MnuAcc_N176: TMenuItem
        Caption = #1604#1740#1587#1578' '#1605#1589#1608#1576#1575#1578
        OnClick = MnuAcc_N176Click
      end
      object MnuAcc_g1: TMenuItem
        Caption = #1604#1740#1587#1578' '#1578#1593#1607#1583#1575#1578
        OnClick = MnuAcc_g1Click
      end
      object MnuAcc_Request: TMenuItem
        Caption = #1583#1585#1582#1608#1575#1587#1578' '#1608#1580#1607
      end
    end
    object N55: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1606#1602#1583#1740#1606#1711#1740' '
      object MnurptBudget1: TMenuItem
        Caption = #1578#1585#1575#1586' '#1608#1589#1608#1604#1610' '#1608' '#1662#1585#1583#1575#1582#1578#1607#1575' '#1576#1578#1601#1603#1610#1603' '#1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607
        OnClick = rptBudgetF0Click
      end
      object MnurptBudget2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1608#1589#1608#1604#1610' '#1608' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1578#1601#1603#1610#1603' '#1603#1583' '#1576#1608#1583#1580#1607' '
        OnClick = rptBudgetTransactionF0Click
      end
      object MnurptBudget3: TMenuItem
        Caption = #1570#1605#1575#1585' '#1583#1585#1570#1605#1583' '#1605#1575#1607#1610#1575#1606#1607
        OnClick = rptBudgetRevenuF0Click
      end
    end
    object acc_budgetReport: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '
      object MnuAcc_N186: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1601#1585#1740#1594' '#1576#1608#1583#1580#1607
        OnClick = MnuAcc_N186Click
      end
      object MnuAcc_N180: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1583#1601#1578#1585' '#1575#1593#1578#1576#1575#1585#1575#1578
        OnClick = MnuAcc_N180Click
      end
      object MnuAcc_N179: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1585#1740#1586' '#1578#1593#1607#1583#1575#1578
        OnClick = MnuAcc_N179Click
      end
      object MnuAcc_N182: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1585#1575#1586' '#1583#1585#1570#1605#1583
        OnClick = MnuAcc_N182Click
      end
    end
    object MnuAcc_128: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuAcc_129: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610' '
        GroupIndex = 1
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear19: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        GroupIndex = 1
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuAcc_N122: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N125: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        GroupIndex = 1
        OnClick = OperatorsClick
      end
      object MnuAcc_130: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        GroupIndex = 1
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MnuAcc_131: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '
        GroupIndex = 1
        object MnuAcc_132: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          OnClick = MakeBackUpF0Click
        end
        object MnuAcc_133: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' '#1601#1604#1575#1662#1610
          OnClick = BackUpBurnCDBsellClick
        end
        object MnuAcc_134: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' CD'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MnuAcc_N121: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N88: TMenuItem
        Caption = #1662#1606#1580#1585#1607
        GroupIndex = 1
        object MnuAcc_N89: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuAcc_N90: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuAcc_HELP2: TMenuItem
        Action = mdiMainF.actHelp
        GroupIndex = 1
      end
      object MnufeedbackF18: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList18: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        OnClick = MnuFeedBackListClick
      end
      object MnuAcc_135: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607
        GroupIndex = 1
        OnClick = aboutF0Click
      end
      object MnuAcc_N177: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        GroupIndex = 1
        OnClick = AddToolbarClick
      end
    end
    object MnuAcc_136: TMenuItem
      Caption = '&'#1582#1585#1608#1580
      GroupIndex = 1
      Hint = '1'
      OnClick = Close0Click
    end
  end
  object Mnu19Finalcial: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 475
    Top = 287
    object MnuAcc_vjMenu_financial: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607' '
      Hint = '1'
      Visible = False
      object MnuAcc_137: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1591#1608#1581' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575' '
        Hint = '1'
      end
      object MnuAcc_138: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575
        Hint = '1'
      end
      object MnuAcc_139: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1601#1585#1605#1607#1575' '
        Hint = '1'
      end
      object MnuAcc_140: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MnuAcc_141: TMenuItem
        Caption = '&'#1662#1575#1603#1587#1575#1586#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
      end
      object MnuAcc_142: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuAcc_FTP3: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuAcc_143: TMenuItem
      Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuAcc_144: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuAcc_145: TMenuItem
        Caption = '-'
      end
      object MnuAcc_146: TMenuItem
        Caption = '&'#1578#1606#1591#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1587#1575#1576#1583#1575#1585#1740
        Hint = '1'
      end
    end
    object MnuAcc_147: TMenuItem
      Caption = #1587#1585#1601#1589#1604' '#1607#1575#1610' '#1589#1608#1585#1578' '#1605#1575#1604#1610
      object MnuAcc_Financial_1: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1606#1575#1608#1610#1606' '#1603#1604#1610' '#1578#1585#1575#1586#1606#1575#1605#1607' '#1575#1610
        OnClick = N112Click
      end
      object MnuAcc_Financial_2: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1583#1575#1585#1575#1574#1610#1607#1575' '#1608' '#1576#1583#1607#1610#1607#1575' '
        OnClick = N113Click
      end
      object MnuAcc_Financial_3: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1602#1604#1575#1605' '#1578#1585#1575#1586#1606#1575#1605#1607' '#1575#1610
        OnClick = N114Click
      end
      object MnuAcc_148: TMenuItem
        Caption = '-'
      end
      object MnuAcc_Financial_4: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1606#1575#1608#1610#1606' '#1603#1604#1610' '#1587#1608#1583' '#1608' '#1586#1610#1575#1606#1610
      end
      object MnuAcc_Financial_5: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1602#1604#1575#1605' '#1587#1608#1583' '#1608#1586#1610#1575#1606#1610
      end
      object MnuAcc_149: TMenuItem
        Caption = '-'
      end
      object MnuAcc_Financial_All: TMenuItem
        Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1603#1583#1610#1606#1711' '#1589#1608#1585#1578#1607#1575#1610' '#1605#1575#1604#1610
      end
    end
    object Acc_financial: TMenuItem
      Caption = #1578#1585#1575#1586#1606#1575#1605#1607' '#1608' '#1587#1608#1583' '#1608#1585#1610#1575#1606
      object MnuAcc_Acc_11: TMenuItem
        Caption = #1578#1585#1575#1586#1606#1575#1605#1607' '#1576#1585#1581#1587#1576' '#1593#1606#1575#1608#1610#1606' '#1603#1604#1610
      end
      object MnuAcc_N8: TMenuItem
        Caption = #1578#1585#1575#1586#1606#1575#1605#1607' '#1576#1585' '#1581#1587#1576' '#1583#1575#1585#1575#1574#1610#1607#1575' '#1608' '#1576#1583#1607#1610#1607#1575
      end
      object MnuAcc_N9: TMenuItem
        Caption = #1578#1585#1575#1586#1606#1575#1605#1607' '
      end
      object MnuAcc_N10: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N15: TMenuItem
        Caption = #1587#1608#1583' '#1608#1586#1610#1575#1606' '#1576#1585' '#1581#1587#1576' '#1593#1606#1575#1608#1610#1606' '#1603#1604#1610
      end
      object MnuAcc_N16: TMenuItem
        Caption = #1587#1608#1583' '#1608#1586#1610#1575#1606
      end
    end
    object MnuAcc__Financial_rpt: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '#1581#1587#1575#1576#1607#1575
    end
    object MnuAcc_150: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      object MnuAcc_151: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610' '
        GroupIndex = 1
        Hint = '1'
        ShortCut = 122
      end
      object MnuAcc_152: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        GroupIndex = 1
      end
      object MnuAcc_153: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '
        GroupIndex = 1
        object MnuAcc_154: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        end
        object MnuAcc_155: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' '#1601#1604#1575#1662#1610
        end
        object MnuAcc_156: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' CD'
        end
      end
      object N459: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N85: TMenuItem
        Caption = #1662#1606#1580#1585#1607
        GroupIndex = 1
        object MnuAcc_N86: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuAcc_N87: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuAcc_Help3: TMenuItem
        Action = mdiMainF.actHelp
        GroupIndex = 1
      end
      object N457: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object N458: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        OnClick = MnuFeedBackListClick
      end
      object MnuAcc_157: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607
        GroupIndex = 1
        OnClick = aboutF0Click
      end
      object N460: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object AddToolbarClick1: TMenuItem
        Caption = 'Add Toolbar'
        GroupIndex = 1
        OnClick = AddToolbarClick
      end
    end
    object MnuAcc_158: TMenuItem
      Caption = '&'#1582#1585#1608#1580
      GroupIndex = 1
      Hint = '1'
    end
  end
  object Mnu21SpecialReport: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 83
    Top = 389
    object MnuAcc_vjMenu_special: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607' '
      Hint = '1'
      Visible = False
      object MnuAcc_N99: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575
        Hint = '1'
      end
      object MnuAcc_N100: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1601#1585#1605#1607#1575' '
        Hint = '1'
      end
      object MnuAcc_178: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MnuAcc_179: TMenuItem
        Caption = '&'#1662#1575#1603#1587#1575#1586#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
      end
      object MnuAcc_180: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuAcc_FTP6: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuAcc_181: TMenuItem
      Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      object MnuAcc_N69: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1587#1575#1576#1583#1575#1585#1740
        OnClick = MnuAcc_N69Click
      end
      object MnuAcc_N94: TMenuItem
        Caption = #1576#1607' '#1585#1608#1586#1585#1587#1575#1606#1610
        OnClick = CommandUpDateClick
      end
      object MnuAcc_N115: TMenuItem
        Caption = #1602#1585#1575#1585#1583#1575#1583#1607#1575
        OnClick = MnuAcc_N115Click
      end
      object MnuAcc_UserTopicRelated: TMenuItem
        Tag = 1
        Caption = #1575#1585#1578#1576#1575#1591' '#1581#1587#1575#1576' '#1605#1593#1740#1606' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '
      end
      object MnuAcc_N195: TMenuItem
        Tag = 1
        Caption = #1575#1585#1578#1576#1575#1591' '#1705#1575#1585#1576#1585' '#1576#1575'  '#1705#1583' '#1607#1575#1740' '#1605#1593#1740#1606
      end
      object MnuAcc_UserDetailGroup: TMenuItem
        Tag = 79
        Caption = #1575#1585#1578#1576#1575#1591' '#1711#1585#1608#1607' '#1607#1575#1740' '#1578#1601#1589#1740#1604#1740' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606
        OnClick = MnuAcc_UserDetailGroupClick
      end
      object MnuAcc_UserDetailRelated: TMenuItem
        Caption = #1575#1585#1578#1576#1575#1591' '#1581#1587#1575#1576' '#1578#1601#1589#1740#1604#1740' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '
        OnClick = MnuAcc_UserDetailRelatedClick
      end
      object MnuAcc_MnuUserDetailRelated2F: TMenuItem
        Tag = 2
        Caption = #1575#1585#1578#1576#1575#1591' '#1705#1575#1585#1576#1585' '#1576#1575'  '#1705#1583' '#1607#1575#1740' '#1578#1601#1589#1740#1604#1740' '
        OnClick = MnuAcc_MnuUserDetailRelated2FClick
      end
      object N436: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N74: TMenuItem
        Caption = #1575#1585#1580#1575#1593
        OnClick = MnuAcc_N74Click
      end
      object MnuAcc_ChangeCodeDoc: TMenuItem
        Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1610#1705' '#1581#1587#1575#1576' '#1576#1607' '#1581#1587#1575#1576' '#1583#1610#1711#1585
        OnClick = MnuAcc_ChangeCodeDocClick
      end
      object MnuAcc_N47: TMenuItem
        Caption = #1580#1583#1608#1604' '#1578#1594#1610#1610#1585#1575#1578' '#1575#1587#1606#1575#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
        OnClick = MnuAcc_N47Click
      end
      object MnuAcc_N170: TMenuItem
        Caption = #1583#1585#1740#1575#1601#1578' '#1575#1587#1606#1575#1583' '#1575#1586' '#1587#1575#1740#1585' '#1587#1740#1587#1578#1605' '#1607#1575
        OnClick = MnuAcc_N170Click
      end
      object MnuAcc_N158: TMenuItem
        Caption = #1578#1607#1740#1607' '#1601#1575#1740#1604' '#1583#1740#1608#1575#1606' '#1605#1581#1575#1587#1576#1575#1578
        OnClick = MnuAcc_N158Click
      end
      object Accounting1: TMenuItem
        Caption = #1740#1705#1662#1575#1585#1670#1607' '#1587#1575#1586#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740'  Accounting  '
        OnClick = mnuIntegratingAcc2FaraFClick
      end
      object MnuAcc_N96: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N146: TMenuItem
        Tag = 30
        Caption = #1605#1593#1585#1601#1740' '#1575#1606#1608#1575#1593' '#1575#1585#1586
        OnClick = mniFormDesignFClick
      end
      object MnuAcc_N147: TMenuItem
        Tag = 31
        Caption = #1579#1576#1578' '#1606#1585#1582' '#1585#1608#1586#1575#1606#1607' '#1575#1585#1586
        OnClick = MnuAcc_N147Click
      end
      object MnuAcc_N106: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N183: TMenuItem
        Caption = #1578#1593#1575#1585#1740#1601#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = MnuAcc_N183Click
      end
      object MnuAcc_N184: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = MnuAcc_N184Click
      end
      object N437: TMenuItem
        Caption = '-'
      end
      object MnuAcc_166: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
    end
    object MnuAcc_N135: TMenuItem
      Caption = #1578#1585#1575#1586#1606#1575#1605#1607' '#1548' '#1589#1608#1585#1578' '#1587#1608#1583' '#1608#1586#1610#1575#1606
      object MnuAcc_N137: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1585#1575#1586#1606#1575#1605#1607' '#1608' '#1587#1608#1583' '#1608#1586#1610#1575#1606
        OnClick = MnuAcc_N137Click
      end
      object MnuAcc_N138: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N136: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1593#1606#1575#1608#1610#1606' '#1711#1586#1575#1585#1588#1575#1578
        OnClick = MnuAcc_N136Click
      end
      object MnuAcc_N139: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1608' '#1578#1606#1592#1610#1605' '#1711#1586#1575#1585#1588#1575#1578' '#1605#1575#1604#1610
        OnClick = MnuAcc_N139Click
      end
      object MnuAcc_MnuN194: TMenuItem
        Caption = '-'
      end
      object MnuAcc_VU_Finacial_st: TMenuItem
        Action = mdiMainF.actVU_Financial_statement
      end
    end
    object mnuSpSpecialReportsActive: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1582#1575#1589
      object mnuDailyWorkF: TMenuItem
        Action = mdiMainF.actDailyWorkF
      end
      object mnuReportDailly: TMenuItem
        Action = mdiMainF.actrptReportDailly
      end
      object mnuDailyWorkTowF: TMenuItem
        Action = mdiMainF.actDailyWorkTowF
      end
      object mnuDailyWorkF1: TMenuItem
        Action = mdiMainF.actDailyWorkF1
      end
      object N125: TMenuItem
        Caption = '-'
      end
      object N124: TMenuItem
        Tag = 7
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1585#1608#1586
        OnClick = AllrptRefineSellClick
      end
      object N126: TMenuItem
        Tag = 8
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1605#1575#1607
        OnClick = AllrptRefineSellClick
      end
      object N312: TMenuItem
        Tag = 9
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' 31'#1585#1608#1586
        OnClick = AllrptRefineSellClick
      end
      object N313: TMenuItem
        Tag = 10
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
        OnClick = AllrptRefineSellClick
      end
      object N127: TMenuItem
        Tag = 11
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1585#1581#1587#1576' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = AllrptRefineSellClick
      end
      object N128: TMenuItem
        Tag = 12
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583
        OnClick = AllrptRefineSellClick
      end
      object N129: TMenuItem
        Tag = 13
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
        OnClick = AllrptRefineSellClick
      end
      object mnuN174: TMenuItem
        Tag = 14
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1576#1578#1601#1603#1610#1603' '#1605#1575#1607' '#1608#1603#1575#1604#1575
        OnClick = AllrptRefineSellClick
      end
      object N343: TMenuItem
        Tag = 15
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588' _ '#1605#1588#1578#1585#1610' '#1608' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
        OnClick = AllrptRefineSellClick
      end
      object N344: TMenuItem
        Tag = 16
        Caption = #1582#1575#1604#1589' '#1601#1585#1608#1588'-'#1576#1607' '#1578#1601#1705#1740#1705' '#1575#1606#1576#1575#1585
        OnClick = AllrptRefineSellClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object AllrptReciptListOnStuffCodeF: TMenuItem
        Tag = 5
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1585#1587#1610#1583#1603#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
        OnClick = AllrptReciptListOnStuffCodeFClick
      end
      object N136: TMenuItem
        Tag = 12
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
        OnClick = AllrptReciptListOnStuffCodeFClick
      end
      object N139: TMenuItem
        Tag = 10
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578'  '#1587#1601#1575#1585#1588' '#1605#1588#1578#1585#1610' - '#1585#1586#1585#1608' '#1603#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
        OnClick = AllrptReciptListOnStuffCodeFClick
      end
      object N137: TMenuItem
        Caption = '-'
      end
      object AllrptReciptListOnCustomers: TMenuItem
        Tag = 5
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1585#1587#1610#1583#1603#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = AllrptReciptListOnCustomersClick
      end
      object N138: TMenuItem
        Tag = 12
        Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = AllrptReciptListOnCustomersClick
      end
      object mnuActSpecialinventoryF1: TMenuItem
        Action = mdiMainF.ActSpecialinventoryF
      end
      object mnuSpCustomerTransaction2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' ...'#8207
        object rptCustomerTransactionF3: TMenuItem
          Tag = 3
          Caption = #1587#1575#1610#1585' '#1587#1585#1601#1589#1604' '#1607#1575
          OnClick = AllrptCustomerTransactionF1Click
        end
        object rptCustomerTransactionF4: TMenuItem
          Tag = 4
          Caption = #1662#1603#1610#1606#1711' '#1601#1585#1608#1588#1606#1583#1607
          OnClick = AllrptCustomerTransactionF1Click
        end
        object AllrptCustomerTransactionF11: TMenuItem
          Tag = 11
          Caption = #1662#1585#1587#1606#1604
          OnClick = AllrptCustomerTransactionF1Click
        end
      end
      object mnuCustomersBalanceF3: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1587#1575#1610#1585
        ShortCut = 16457
        OnClick = mnuCustomersBalanceF3Click
      end
    end
    object MnuAcc_Action: TMenuItem
      Caption = #1593#1605#1604#1740#1575#1578
      object MnuAcc_N148: TMenuItem
        Caption = #1575#1593#1604#1575#1605#1740#1607' '#1576#1583'/'#1576#1587
        OnClick = MnuAcc_N148Click
      end
      object MnuAcc_N171: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N151: TMenuItem
        Tag = 73
        Caption = #1605#1593#1585#1601#1740' '#1575#1606#1608#1575#1593' '#1589#1608#1585#1578' '#1578#1591#1576#1740#1602
        OnClick = MnuAcc_N151Click
      end
      object MnuAcc_N149: TMenuItem
        Tag = 69
        Caption = #1605#1593#1585#1601#1740' '#1591#1585#1601' '#1581#1587#1575#1576#1607#1575#1740' '#1589#1608#1585#1578' '#1578#1591#1576#1740#1602' '
        OnClick = MnuAcc_N149Click
      end
      object MnuAcc_N150: TMenuItem
        Tag = 70
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1591#1585#1601' '#1581#1587#1575#1576' '#1589#1608#1585#1578' '#1578#1591#1576#1740#1602
        OnClick = MnuAcc_N150Click
      end
      object MnuAcc_N169: TMenuItem
        Caption = #1578#1591#1576#1740#1602' '#1581#1587#1575#1576#1607#1575' ('#1605#1594#1575#1740#1585#1578' '#1711#1740#1585#1740')'
        OnClick = MnuAcc_N169Click
      end
      object MnuAcc_N172: TMenuItem
        Caption = #1578#1591#1576#1740#1602' '#1581#1587#1575#1576' '#1576#1575' '#1587#1740#1587#1578#1605' '#1601#1585#1608#1588' '#1608' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1740
        object MnuAcc_N173: TMenuItem
          Caption = #1605#1594#1575#1740#1585#1578' '#1711#1740#1585#1740' '#1576#1575' '#1575#1606#1576#1575#1585
          OnClick = MnuAcc_N173Click
        end
        object MnuAcc_N174: TMenuItem
          Caption = #1605#1594#1575#1740#1585#1578' '#1711#1740#1585#1740' '#1576#1575' '#1601#1585#1608#1588
          OnClick = MnuAcc_N174Click
        end
      end
      object N168: TMenuItem
        Caption = #1605#1594#1575#1740#1585#1578' '#1578#1585#1575#1586' '#1578#1601#1589#1740#1604#1740' '#1576#1575' '#1575#1606#1576#1575#1585
        OnClick = N168Click
      end
    end
    object MnuAcc_Expense: TMenuItem
      Caption = #1593#1605#1604#1740#1575#1578' '#1582#1575#1589
      object MnuAcc_N141: TMenuItem
        Caption = #1587#1606#1583' '#1607#1586#1740#1606#1607
        OnClick = MnuAcc_N141Click
      end
      object MnuAcc_N142: TMenuItem
        Caption = #1604#1740#1587#1578' '#1575#1587#1606#1575#1583' '#1607#1586#1740#1606#1607
        OnClick = MnuAcc_N142Click
      end
      object MnuAcc_N145: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N143: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1740#1587#1607' '#1575#1740' '#1576#1608#1583#1580#1607' '#1608' '#1593#1605#1604#1705#1585#1583' '#8207'- '#1605#1593#1740#1606
        OnClick = MnuAcc_N143Click
      end
      object MnuAcc_N144: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1740#1587#1607' '#1575#1740' '#1576#1608#1583#1580#1607' '#1608' '#1593#1605#1604#1705#1585#1583' - '#1578#1601#1589#1740#1604#1740
        OnClick = MnuAcc_N144Click
      end
      object N472: TMenuItem
        Caption = '-'
      end
      object mnuIntegratingAcc2FaraF: TMenuItem
        Caption = #1740#1705#1662#1575#1585#1670#1607' '#1587#1575#1586#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1604' '#1607#1575#1740' '#1605#1575#1604#1740'  Accounting  '
        OnClick = mnuIntegratingAcc2FaraFClick
      end
    end
    object MnuAcc_N103: TMenuItem
      Caption = #1583#1601#1575#1578#1585' '#1582#1575#1589
      object MnuAcc_N108: TMenuItem
        Caption = ' '#1583#1601#1578#1585' '#1581#1587#1575#1576' '#1581#1587#1575#1576' '#1583#1585' '#1670#1606#1583' '#1583#1608#1585#1607' '#1605#1575#1604#1610
        OnClick = MnuAcc_N108Click
      end
      object MnuAcc_n102: TMenuItem
        Caption = ' '#1583#1601#1578#1585' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610' '#1583#1585' '#1670#1606#1583' '#1583#1608#1585#1607' '#1605#1575#1604#1610
        OnClick = MnuAcc_n102Click
      end
      object MnuAcc_N104: TMenuItem
        Caption = '-'
      end
      object MnuAcc_MnuRptJournal: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1589#1608#1585#1578' '#1585#1610#1586' '#1575#1587#1606#1575#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
        OnClick = MnuAcc_MnuRptJournalClick
      end
      object MnuAcc_N114: TMenuItem
        Caption = #1578#1591#1576#1610#1602' '#1608' '#1605#1602#1575#1610#1587#1607' '#1581#1587#1575#1576#1607#1575
        object MnuAcc_Compare: TMenuItem
          Tag = 1
          Caption = #1578#1591#1576#1610#1602' '#1581#1587#1575#1576#1607#1575#1610' '#1581#1587#1575#1576' '#1576#1575' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610
          OnClick = MnuAcc_CompareClick
        end
        object MnuAcc_N116: TMenuItem
          Tag = 2
          Caption = #1578#1591#1576#1610#1602' '#1581#1587#1575#1576#1607#1575#1610' '#1581#1587#1575#1576' '#1576#1575' '#1593#1591#1601
        end
        object MnuAcc_N117: TMenuItem
          Caption = '-'
        end
        object MnuAcc_N118: TMenuItem
          Tag = 3
          Caption = #1578#1591#1576#1610#1602' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '#1576#1575' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610
        end
        object MnuAcc_N119: TMenuItem
          Tag = 4
          Caption = #1578#1591#1576#1610#1602' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '#1576#1575' '#1593#1591#1601
          OnClick = MnuAcc_N119Click
        end
      end
    end
    object MnuAcc_N67: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1578#1581#1604#1610#1604#1610
      object MnuAcc_N66: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575
        OnClick = MnuAcc_N66Click
      end
      object MnuAcc_N91: TMenuItem
        Caption = #1578#1585#1575#1586' '#1605#1575#1578#1585#1740#1587#1740' '#1581#1587#1575#1576#1607#1575
        OnClick = MnuAcc_N91Click
      end
      object MnuAcc_YearsTest: TMenuItem
        Caption = 'YearsTest'
        Visible = False
        OnClick = MnuAcc_YearsTestClick
      end
      object MnuAcc_N6: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N101: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1582#1575#1589' '#1575#1586' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610
        OnClick = MnuAcc_N101Click
      end
    end
    object MnuAcc__special_1: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1605#1602#1575#1610#1587#1607' '#1575#1610
      object MnuAcc_RptAccMonth_1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1711#1585#1608#1607' '#1581#1587#1575#1576#1607#1575
        OnClick = MnuAcc_RptAccMonth_1Click
      end
      object MnuAcc_RptAccMonth_2: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576' '#1603#1604
        OnClick = MnuAcc_RptAccMonth_2Click
      end
      object MnuAcc_RptAccMonth_3: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576
        OnClick = MnuAcc_RptAccMonth_3Click
      end
      object MnuAcc_N20: TMenuItem
        Caption = '-'
      end
      object MnuAcc_RptAcc_DetailMonth: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1578#1601#1589#1610#1604#1610' 1'
        OnClick = MnuAcc_RptAcc_DetailMonthClick
      end
      object MnuAcc_RptAcc_CTopicMonth_1: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1578#1601#1589#1610#1604#1610' 2'
        OnClick = MnuAcc_RptAcc_CTopicMonth_1Click
      end
      object MnuAcc_N211: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575' '#1583#1585' '#1587#1591#1581' '#1578#1601#1589#1610#1604#1610' 3'
        OnClick = MnuAcc_N211Click
      end
      object MnuAcc_N65: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N49: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuAcc_N49Click
      end
    end
    object Acc_CurrencyReport: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1581#1587#1575#1576#1583#1575#1585#1740
    end
    object acc_special_otherReport: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuAcc__manage_rpt: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '
      object N159: TMenuItem
        Caption = #1578#1585#1575#1586' '#1605#1593#1740#1606' '#1575#1585#1586#1740' / '#1585#1740#1575#1604#1740' '#1576#1607' '#1589#1608#1585#1578' '#1605#1575#1578#1585#1740#1587#1740
        OnClick = N159Click
      end
    end
    object MnuAcc_168: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuAcc_169: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610' '
        GroupIndex = 1
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear20: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        GroupIndex = 1
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuAcc_N32: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_170: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        GroupIndex = 1
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuAcc_actCnPrefixWizard20: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
        GroupIndex = 1
      end
      object MnuAcc_171: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '
        GroupIndex = 1
        object MnuAcc_172: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        end
        object MnuAcc_173: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' '#1601#1604#1575#1662#1610
        end
        object MnuAcc_174: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' CD'
        end
      end
      object MnuAcc_N126: TMenuItem
        Caption = #1570#1610#1603#1608#1606' '#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        GroupIndex = 1
        OnClick = AddToolbarClick
      end
      object MnuAcc_N107: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N79: TMenuItem
        Caption = #1662#1606#1580#1585#1607
        GroupIndex = 1
        object MnuAcc_N80: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuAcc_N81: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuAcc_Help4: TMenuItem
        Action = mdiMainF.actHelp
        GroupIndex = 1
      end
      object N463: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object N464: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        OnClick = MnuFeedBackListClick
      end
      object MnuAcc_175: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607
        GroupIndex = 1
        OnClick = aboutF0Click
      end
      object MnuAcc_N34: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_176: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        GroupIndex = 1
        Hint = '1'
      end
      object MnuAcc_N140: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_177: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        GroupIndex = 1
        Hint = '1'
      end
    end
  end
  object Mnu20Portion: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 619
    Top = 293
    object MnuAcc_vjMenu_portion: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MnuAcc_N97: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575
        Hint = '1'
      end
      object MnuAcc_N98: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1606#1610#1575#1586' '#1601#1585#1605#1607#1575' '
        Hint = '1'
      end
      object MnuAcc_FTP5: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuAcc_N26: TMenuItem
      Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuAcc_N62: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605'  '#1581#1587#1575#1576#1583#1575#1585#1740
        Hint = '1'
      end
      object MnuAcc_N93: TMenuItem
        Caption = #1576#1607' '#1585#1608#1586#1585#1587#1575#1606#1610
        Hint = '1'
      end
    end
    object MnuAcc_N37: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
      object MnuAcc_N39: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1580#1583#1608#1604' '#1590#1585#1575#1610#1576' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607
        OnClick = MnuAcc_N39Click
      end
      object MnuAcc_N212: TMenuItem
        Caption = #1588#1606#1575#1587#1575#1610#1610' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607' '
        OnClick = MnuAcc_N212Click
      end
      object MnuAcc_N22: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N23: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1580#1583#1608#1604' '#1590#1585#1575#1610#1576' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607'2'
        OnClick = MnuAcc_N23Click
      end
    end
    object MnuAcc_s1: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
      object MnuAcc_N110: TMenuItem
        Caption = #1580#1583#1608#1604' '#1603#1583#1610#1606#1711' '#1607#1586#1610#1606#1607' '#1605#1578#1606#1575#1592#1585' '
      end
      object MnuAcc_N64: TMenuItem
        Caption = '-'
      end
      object MnuAcc_N63: TMenuItem
        Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607' '
      end
    end
    object MnuAcc_N18: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
      object MnuAcc_N43: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607' '
      end
      object MnuAcc_N318: TMenuItem
        Caption = #1580#1583#1608#1604' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607
      end
      object MnuAcc_N210: TMenuItem
        Caption = #1580#1583#1608#1604' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607' - '#1578#1601#1589#1610#1604#1610'3'
      end
    end
    object mnuAccPortion: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuAcc_N36: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuAcc_N61: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610' '
        GroupIndex = 1
        Hint = '1'
        ShortCut = 122
      end
      object MnuAcc_N60: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N57: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '
        GroupIndex = 1
        object MnuAcc_N59: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        end
        object MnuAcc_N58: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' '#1601#1604#1575#1662#1610
        end
        object MnuAcc_CD1: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1585#1608#1610' CD'
        end
      end
      object MnuAcc_N56: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        GroupIndex = 1
        Hint = '1'
      end
      object MnuAcc_N55: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N54: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        GroupIndex = 1
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuAcc_N53: TMenuItem
        Caption = #1570#1610#1603#1608#1606' '#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        GroupIndex = 1
        OnClick = AddToolbarClick
      end
      object MnuAcc_N521: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object MnuAcc_N76: TMenuItem
        Caption = #1662#1606#1580#1585#1607
        GroupIndex = 1
        object MnuAcc_N77: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuAcc_N78: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuAcc_Help6: TMenuItem
        Action = mdiMainF.actHelp
        GroupIndex = 1
      end
      object N461: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object N462: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        GroupIndex = 1
        OnClick = MnuFeedBackListClick
      end
      object MnuAcc_N51: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607
        GroupIndex = 1
        OnClick = aboutF0Click
      end
    end
    object MnuAcc_N48: TMenuItem
      Caption = #1582#1585#1608#1580
    end
  end
  object MainMenu0Schedule: TMainMenu
    Tag = 4
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 91
    Top = 465
    object MnuPay_vjMenu0: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MnuPay_N124: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        Hint = '1'
      end
      object MnuPay_N123: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
      end
      object MnuPay_MItemOtherFormTypeScVijeh: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
      end
      object MnuPay_N1211: TMenuItem
        Caption = '-'
      end
      object MnuPay_N202: TMenuItem
        Tag = 40
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
      end
      object MnuPay_N203: TMenuItem
        Tag = 41
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
      end
      object MnuPay_N204: TMenuItem
        Caption = '-'
      end
      object MnuPay_N120: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuPay_actCnPrefixWizard46: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuPay_N119: TMenuItem
      Caption = '&'#1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuPay_N134: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object MnuPay_N133: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        ImageIndex = 8
        OnClick = MnuPay_ConfigFenterClick
      end
      object MnuPay_N132: TMenuItem
        Caption = '-'
      end
      object MnuPay_N131: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1586' '#1587#1575#1610#1578
      end
      object MnuPay_N125: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
        OnClick = MnuPay_CommandUpDateClick
      end
      object MnuPay_N188: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610
        object MnuPay_N189: TMenuItem
          Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '#1608' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        end
        object MnuPay_N190: TMenuItem
          Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
          Visible = False
        end
      end
    end
    object MnuPay_N112: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
      object MnuPay_N149: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '
      end
      object MnuPay_N148: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemSchedule5: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '
      end
      object MnuPay_FormDesignF: TMenuItem
        Tag = 37
        Caption = #1605#1593#1585#1601#1740' '#1705#1583#1740#1606#1711' '#1570#1605#1608#1586#1588
      end
      object MnuPay_actCnPrefixWizard47: TMenuItem
        Action = mdiMainF.actJobs
      end
      object MnuPay_AllFormDesignSalaryF: TMenuItem
        Tag = 39
        Caption = #1601#1585#1605' '#1582#1575#1589' '#1662#1585#1587#1606#1604
      end
      object MnuPay_N218: TMenuItem
        Caption = '-'
      end
      object MnuPay_N221: TMenuItem
        Caption = #1604#1740#1587#1578' '#1605#1593#1585#1601#1740' '#1588#1594#1604
      end
    end
    object MnuPay_N180: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuPay_N122: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuPay_N162: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuPay_N160: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
      end
      object MnuPay_actCnPrefixWizard48: TMenuItem
        Action = mdiMainF.actChangepassword
      end
      object MnuPay_oolbar3: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
      end
      object MnuPay_actCnPrefixWizard49: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object MnuPay_N161: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear21: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuPay_N154: TMenuItem
        Caption = '-'
      end
      object MnuPay_N147: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        object MnuPay_N150: TMenuItem
          Caption = #1601#1604#1575#1662#1610' '#1608' '#1607#1575#1585#1583' '#1583#1610#1587#1603
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MnuPay_CD1: TMenuItem
          Caption = 'CD'
          Hint = '1'
        end
      end
      object MnuPay_N153: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        OnClick = optionsF0Click
      end
      object MnuPay_N152: TMenuItem
        Caption = '-'
      end
      object MnuPay_N157: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        object MnuPay_N159: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuPay_N158: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuPay_actCnPrefixWizard50: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF19: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList19: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MnuPay_N145: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        OnClick = aboutF0Click
      end
      object MnuPay_N143: TMenuItem
        Caption = '-'
      end
      object MnuPay_N128: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object MainMenu1Organization: TMainMenu
    Tag = 1
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 227
    Top = 395
    object MnuPay_vjMenu1: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MnuPay_N130: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        Hint = '1'
        OnClick = MnuPay_1Click
      end
      object MnuPay_N129: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
        OnClick = MnuPay_145Click
      end
      object MnuPay_MItemOtherFormTypeOVijeh: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
      end
      object MnuPay_N127: TMenuItem
        Caption = '-'
      end
      object MnuPay_N205: TMenuItem
        Tag = 40
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
      end
      object MnuPay_N206: TMenuItem
        Tag = 41
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
      end
      object MnuPay_N207: TMenuItem
        Caption = '-'
      end
      object MnuPay_N126: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuPay_actCnPrefixWizard51: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuPay_N136: TMenuItem
      Caption = '&'#1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuPay_N141: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object MnuPay_N140: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1602#1608#1602' '
        Hint = '1'
        ImageIndex = 8
        OnClick = MnuPay_ConfigFenterClick
      end
      object MnuPay_N139: TMenuItem
        Caption = '-'
      end
      object MnuPay_N138: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1586' '#1587#1575#1610#1578
      end
      object MnuPay_N137: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
        OnClick = MnuPay_CommandUpDateClick
      end
      object MnuPay_N191: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610
        object MnuPay_N192: TMenuItem
          Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '#1608' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        end
        object MnuPay_N193: TMenuItem
          Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
          Visible = False
        end
      end
    end
    object MnuPay_N113: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
      object MnuPay_N156: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '
      end
      object MnuPay_N182: TMenuItem
        Tag = 38
        Caption = #1580#1583#1608#1604' '#1580#1575#1610#1711#1586#1610#1606#1610' '#1578#1580#1585#1576#1607' '#1576#1580#1575#1610' '#1578#1581#1589#1610#1604
      end
      object MnuPay_N155: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemOrganization4: TMenuItem
        Caption = #1605#1593#1585#1601#1740' '#1608#1590#1593#1740#1578' '#1607#1575' '#1608' '#1578#1575#1579#1740#1585' '#1570#1606' '#1583#1585' '#1587#1740#1587#1578#1605
      end
      object MnuPay_MItemOrganization2: TMenuItem
        Caption = #1705#1583#1740#1606#1711' '#1606#1592#1575#1605' '#1580#1575#1605#1593
      end
      object MnuPay_N151: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemOrganization5: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '
      end
      object MnuPay_MItemOrganization6: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1575#1585#1578#1576#1575#1591' '#1570#1606#1607#1575
      end
      object MnuPay_actCnPrefixWizard52: TMenuItem
        Action = mdiMainF.actJobs
      end
      object MnuPay_N222: TMenuItem
        Caption = '-'
      end
      object MnuPay_N223: TMenuItem
        Caption = #1604#1740#1587#1578' '#1605#1593#1585#1601#1740' '#1588#1594#1604
      end
    end
    object MnuPay_N56: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604
      object MnuPay_actCnPrefixWizard53: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
        ImageIndex = 2
      end
      object MnuPay_actCnPrefixWizard54: TMenuItem
        Action = mdiMainF.actEmployeeInfolistF
      end
      object MnuPay_N2321: TMenuItem
        Tag = -1
        Caption = '-'
      end
      object MnuPay_N2311: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604
      end
      object MnuPay_actCnPrefixWizard55: TMenuItem
        Action = mdiMainF.ActPersonalArchiveF
      end
    end
    object MnuPay_N2351: TMenuItem
      Caption = #1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      object MnuPay_actCnPrefixWizard56: TMenuItem
        Action = mdiMainF.ActInterdictsF
      end
      object MnuPay_N2421: TMenuItem
        Caption = #1605#1578#1605#1605' '#1581#1603#1605
      end
      object MnuPay_N241: TMenuItem
        Caption = #1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1594#1610#1585#1601#1593#1575#1604
      end
      object MnuPay_N2401: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard57: TMenuItem
        Action = mdiMainF.actInterdicts4FormF1
      end
      object MnuPay_N2381: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1586#1575#1610#1575
      end
      object MnuPay_N2371: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      end
      object MnuPay_N2361: TMenuItem
        Caption = '-'
      end
    end
    object MnuPay_N208: TMenuItem
      Caption = #1587#1608#1575#1576#1602' '#1582#1583#1605#1578#1610
      object MnuPay_N2091: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1583#1575#1582#1604' '#1608#1586#1575#1585#1578
      end
      object MnuPay_N2101: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1582#1575#1585#1580' '#1608#1586#1575#1585#1578
      end
      object MnuPay_N2081: TMenuItem
        Tag = 42
        Caption = #1587#1608#1575#1576#1602' '#1581#1590#1608#1585' '#1583#1585' '#1580#1576#1607#1607
      end
      object MnuPay_N2111: TMenuItem
        Tag = 43
        Caption = #1587#1608#1575#1576#1602' '#1575#1610#1579#1575#1585' '#1711#1585#1610
      end
      object MnuPay_N2121: TMenuItem
        Tag = 44
        Caption = #1587#1608#1575#1576#1602' '#1580#1575#1606#1576#1575#1586#1610
      end
      object MnuPay_N2131: TMenuItem
        Tag = 45
        Caption = #1587#1608#1575#1576#1602' '#1576#1587#1610#1580#1610
      end
      object MnuPay_N2141: TMenuItem
        Tag = 46
        Caption = #1587#1608#1575#1576#1602' '#1580#1606#1711' '#1586#1583#1607
      end
      object MnuPay_N2151: TMenuItem
        Tag = 47
        Caption = #1608#1590#1593#1610#1578' '#1605#1587#1603#1606
      end
    end
    object MnuPay_N181: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuPay_N163: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuPay_N179: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuPay_N177: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
      end
      object MnuPay_actCnPrefixWizard58: TMenuItem
        Action = mdiMainF.actChangepassword
      end
      object MnuPay_oolbar4: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
      end
      object MnuPay_actCnPrefixWizard59: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object MnuPay_N178: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear22: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuPay_N173: TMenuItem
        Caption = '-'
      end
      object MnuPay_N169: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        object MnuPay_N170: TMenuItem
          Caption = #1601#1604#1575#1662#1610' '#1608' '#1607#1575#1585#1583' '#1583#1610#1587#1603
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MnuPay_CD2: TMenuItem
          Caption = 'CD'
          Hint = '1'
        end
      end
      object MnuPay_N172: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        OnClick = optionsF0Click
      end
      object MnuPay_N171: TMenuItem
        Caption = '-'
      end
      object MnuPay_N168: TMenuItem
        Caption = '-'
      end
      object MnuPay_N174: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        object MnuPay_N176: TMenuItem
          Caption = #1603#1575#1588#1610
        end
        object MnuPay_N175: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
        end
      end
      object MnuPay_actCnPrefixWizard60: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF20: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList20: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MnuPay_N167: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        OnClick = aboutF0Click
      end
      object MnuPay_N165: TMenuItem
        Caption = '-'
      end
      object MnuPay_N164: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object MainMenu2Salary: TMainMenu
    Tag = 2
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 347
    Top = 387
    object MnuPay_vjMenu2: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MnuPay_1: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        Hint = '1'
        OnClick = MnuPay_1Click
      end
      object MnuPay_145: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
        OnClick = MnuPay_145Click
      end
      object MnuPay_MItemOtherFormTypeSVijeh: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
      end
      object MnuPay_146: TMenuItem
        Caption = '-'
      end
      object MnuPay_N142: TMenuItem
        Tag = 40
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuPay_N142Click
      end
      object MnuPay_N194: TMenuItem
        Tag = 41
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuPay_N194Click
      end
      object MnuPay_N195: TMenuItem
        Caption = '-'
      end
      object MnuPay_WorkflowMainF: TMenuItem
        Caption = #1578#1606#1592#1740#1605#8207#1578#1587#1578#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = MnuPay_WorkflowMainFClick
      end
      object MnuPay_N230: TMenuItem
        Caption = '-'
      end
      object MnuPay_147: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuPay_actCnPrefixWizard31: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuPay_148: TMenuItem
      Caption = '&'#1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuPay_149: TMenuItem
        Caption = '&'#1576#1575#1586#1610#1575#1576#1610' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        OnClick = RestoreDataBaseClick
      end
      object MnuPay_150: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1602#1608#1602
        Hint = '1'
        ImageIndex = 8
        OnClick = MnuPay_ConfigFenterClick
      end
      object MnuPay_N99: TMenuItem
        Caption = '-'
      end
      object MnuPay_N74: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1604#1610' '#1605#1586#1575#1610#1575#1610' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
        OnClick = MnuPay_N74Click
      end
      object MnuPay_N226: TMenuItem
        Caption = #1603#1662#1610' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
        OnClick = MnuPay_N226Click
      end
      object MnuPay_N52: TMenuItem
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
        Hint = '1'
        OnClick = MnuPay_CommandUpDateClick
      end
      object MnuPay_N1831: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610
        object MnuPay_151: TMenuItem
          Caption = '&'#1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '#1608' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '
          OnClick = MnuPay_151Click
        end
        object MnuPay_MakeMaliYear: TMenuItem
          Caption = #1575#1610#1580#1575#1583' '#1587#1575#1604' '#1605#1575#1604#1610' '
          Visible = False
          OnClick = MnuPay_MakeMaliYearClick
        end
      end
      object MnuPay_ERP1: TMenuItem
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' ERP'
        OnClick = MnuPay_ERP1Click
      end
    end
    object MnuPay_152: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607
      object MnuPay_153: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '
        OnClick = MnuPay_153Click
      end
      object MnuPay_154: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemSalaryCalcS: TMenuItem
        Caption = #1593#1606#1575#1608#1610#1606' '#1605#1581#1575#1587#1576#1575#1578#1610' '#1581#1602#1608#1602' '#1548' '#1576#1610#1605#1607' '#1608' '#1605#1575#1604#1610#1575#1578' '
      end
      object MnuPay_MItemInterdictEffectS: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      end
      object MnuPay_MItemSalaryEffectS: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1579#1585' '#1576#1585#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
      end
      object MnuPay_155: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemOtherFormTypeS: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '
      end
      object MnuPay_MItemSalaryCorrelateS: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1575#1585#1578#1576#1575#1591' '#1570#1606#1607#1575
      end
      object MnuPay_SalaryRanges: TMenuItem
        Tag = 88
        Caption = #1605#1593#1585#1601#1740' '#1588#1594#1604'  '#1605#1608#1579#1585' '#1576#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
        OnClick = MnuPay_FormDesignFClick
      end
      object MnuPay_156: TMenuItem
        Caption = '-'
      end
      object MnuPay_157: TMenuItem
        Caption = #1578#1593#1575#1585#1610#1601' '#1579#1575#1576#1578' '#1576#1610#1605#1607' '
        OnClick = MnuPay_157Click
      end
    end
    object MnuPay_N135: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604
      object MnuPay_2PersonelInfo: TMenuItem
        Action = mdiMainF.ActPersonelInfoF
      end
      object MnuPay_actCnPrefixWizard33: TMenuItem
        Action = mdiMainF.actEmployeeInfolistF
      end
      object MnuPay_158: TMenuItem
        Tag = -1
        Caption = '-'
      end
      object MnuPay_PersonelSponsorshipF: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604
        OnClick = MnuPay_PersonelSponsorshipFClick
      end
      object MnuPay_actCnPrefixWizard34: TMenuItem
        Action = mdiMainF.ActPersonalArchiveF
      end
    end
    object MnuPay_159: TMenuItem
      Caption = #1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      object MnuPay_2InterdictsF: TMenuItem
        Action = mdiMainF.ActInterdictsF
      end
      object MnuPay_InterdictsF49_1: TMenuItem
        Caption = #1605#1578#1605#1605' '#1581#1603#1605
        OnClick = MnuPay_InterdictsF49_1Click
      end
      object MnuPay_N11: TMenuItem
        Caption = #1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1594#1610#1585#1601#1593#1575#1604
        OnClick = MnuPay_N11Click
      end
      object MnuPay_N15: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard36: TMenuItem
        Action = mdiMainF.actInterdicts4FormF1
      end
      object MnuPay_N54: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1586#1575#1610#1575
        OnClick = MnuPay_N54Click
      end
      object MnuPay_Interdicts4HistoryF1: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
        OnClick = MnuPay_Interdicts4HistoryF1Click
      end
      object MnuPay_N7: TMenuItem
        Caption = '-'
      end
    end
    object MnuPay_Function_Mission: TMenuItem
      Caption = #1603#1575#1585#1603#1585#1583' '#1608' '#1605#1575#1605#1608#1585#1610#1578
      object MnuPay_FunctionsF: TMenuItem
        Action = mdiMainF.ActFunctionsF
      end
      object MnuPay_Functions2F: TMenuItem
        Action = mdiMainF.ActFunctions2F
      end
      object MnuPay_FunctionDayF: TMenuItem
        Action = mdiMainF.actFunctionDayF
      end
      object MnuPay_FunctionDayChekF28: TMenuItem
        Caption = #1603#1606#1578#1585#1604' '#1579#1576#1578' '#8207#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
        OnClick = MnuPay_FunctionDayChekF28Click
      end
      object MnuPay_FunctionDayChek2F28: TMenuItem
        Caption = #1603#1606#1578#1585#1604' '#1579#1576#1578' '#8207#1603#1575#1585#1603#1585#1583' '#1582#1575#1589'2'
        OnClick = MnuPay_FunctionDayChek2F28Click
      end
      object MnuPay_FunctionDayListF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1603#1575#1585#1603#1585#1583' '#1585#1608#1586#1575#1606#1607' '#1608' '#1575#1606#1578#1602#1575#1604' '#1576#1607' '#1603#1575#1585#1603#1585#1583' 2'
        OnClick = MnuPay_FunctionDayListFClick
      end
      object MnuPay_FunctionYearsF: TMenuItem
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1587#1575#1604' '#1580#1575#1585#1610
        OnClick = MnuPay_FunctionYearsFClick
      end
      object MnuPay_N118: TMenuItem
        Caption = #1603#1606#1578#1585#1604' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
        OnClick = MnuPay_N118Click
      end
      object MnuPay_N87: TMenuItem
        Caption = '-'
      end
      object MnuPay_N14: TMenuItem
        Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578
        object MnuPay_N210: TMenuItem
          Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1603#1575#1585#1575'(DOS)'
          OnClick = MnuPay_N210Click
        end
        object MnuPay_N77: TMenuItem
          Caption = '-'
        end
        object MnuPay_N40: TMenuItem
          Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1603#1575#1585#1575'(Windows)--'
          Visible = False
          OnClick = MnuPay_N40Click
        end
        object MnuPay_KartSaat_WinF: TMenuItem
          Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1603#1575#1585#1575'(Windows)'
          OnClick = MnuPay_KartSaat_WinFClick
        end
        object MnuPay_KartSaatNewF0: TMenuItem
          Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' ... Excel'
          OnClick = MnuPay_KartSaatNewF0Click
        end
        object MnuPay_N70: TMenuItem
          Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1583#1606#1610#1575#1610' '#1662#1585#1583#1575#1586#1588
          OnClick = MnuPay_N70Click
        end
      end
      object MnuPay_N90: TMenuItem
        Caption = '-'
      end
      object MnuPay_N209: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1662#1585#1587#1606#1604
        object MnuPay_160: TMenuItem
          Caption = #1604#1610#1587#1578' '#1705#1575#1585#1705#1585#1583' '#1605#1575#1607#1610#1575#1606#1607' '
          OnClick = MnuPay_RptFunctionWithMonthF1Click
        end
        object MnuPay_161: TMenuItem
          Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1578#1601#1603#1610#1603'  '#1662#1585#1608#1688#1607' '#1548#1605#1575#1607' '#1608' '#1662#1585#1587#1606#1604
          OnClick = MnuPay_161Click
        end
        object MnuPay_N211: TMenuItem
          Caption = #1604#1610#1587#1578' '#1705#1575#1585#1705#1585#1583' '#1587#1575#1604#1610#1575#1606#1607
          OnClick = MnuPay_N211Click
        end
        object MnuPay_FunctionItemYearF: TMenuItem
          Caption = #1604#1610#1587#1578' '#1580#1586#1574#1740#1575#1578' '#1705#1575#1585#1705#1585#1583' '#1587#1575#1604#1610#1575#1606#1607
          OnClick = MnuPay_FunctionItemYearFClick
        end
        object MnuPay_Function4ProjectPersonF1: TMenuItem
          Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607' '#1607#1575' '#1608#1662#1585#1587#1606#1604
          OnClick = MnuPay_Function4ProjectPersonF1Click
        end
      end
      object MnuPay_162: TMenuItem
        Caption = '-'
      end
      object MnuPay_MissionF24: TMenuItem
        Caption = #1581#1603#1605' '#1605#1575#1605#1608#1585#1610#1578
        OnClick = MnuPay_MissionF24Click
      end
      object MnuPay_actCnPrefixWizard40: TMenuItem
        Action = mdiMainF.actMissionItemsF24
      end
      object MnuPay_MissionInfo: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1605#1608#1585#1610#1578' 2'
        OnClick = MnuPay_MissionInfoClick
      end
    end
    object MnuPay_N102: TMenuItem
      Caption = #1605#1585#1582#1589#1610
      object MnuPay_actCnPrefixWizard41: TMenuItem
        Action = mdiMainF.actEmployeeDeeExtinfoF16
      end
      object MnuPay_TPersonelLeaveF16: TMenuItem
        Caption = #1579#1576#1578' '#1605#1575#1606#1583#1607' '#1605#1585#1582#1589#1610' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = MnuPay_TPersonelLeaveF16Click
      end
      object MnuPay_N9: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard42: TMenuItem
        Action = mdiMainF.actEmployeeDeeExtinfo_4F16
      end
      object MnuPay_AllDecExtOnMounthF: TMenuItem
        Tag = 1
        Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1605#1575#1607#1610#1575#1606#1607'  )'#8207
        OnClick = MnuPay_AllDecExtOnMounthFClick
      end
      object MnuPay_N66: TMenuItem
        Tag = 2
        Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1587#1575#1604#1610#1575#1606#1607'  )'#8207
        OnClick = MnuPay_AllDecExtOnMounthFClick
      end
      object MnuPay_N225: TMenuItem
        Tag = 1083
        Caption = #1705#1575#1585#1578' '#1605#1585#1582#1589#1740' 2000'
        OnClick = mnuRptReportsFAllClick
      end
      object MnuPay_N227: TMenuItem
        Tag = 1089
        Caption = #1705#1575#1585#1578' '#1605#1585#1582#1589#1740' 2008'
        OnClick = mnuRptReportsFAllClick
      end
      object MnuPay_DecExtOnMounthSeparationF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' ( '#1576#1607' '#1578#1601#1603#1610#1603' '#1605#1575#1607'  )'#8207
        OnClick = MnuPay_DecExtOnMounthSeparationFClick
      end
      object MnuPay_N2301: TMenuItem
        Caption = #1579#1576#1578' '#1605#1585#1582#1589#1740' '#1582#1575#1589
        ShortCut = 16461
        OnClick = MnuPay_N2301Click
      end
      object MnuPay_VacationOver9F: TMenuItem
        Caption = #1604#1740#1587#1578' '#1605#1585#1582#1589#1740' '#1605#1575#1586#1575#1583' 9 '#1585#1608#1586
        OnClick = MnuPay_VacationOver9FClick
      end
    end
    object MnuPay_163: TMenuItem
      Caption = #1587#1575#1610#1585' '#1593#1605#1604#1610#1575#1578
      object MnuPay_164: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1580#1607#1578' '#1603#1606#1578#1585#1604' '#1662#1575#1610#1607' '#1587#1606#1608#1575#1578#1610
        OnClick = MnuPay_164Click
      end
      object MnuPay_N6: TMenuItem
        Caption = #1579#1576#1578' '#1605#1575#1606#1583#1607' '#1662#1575#1610#1607' '#1587#1606#1608#1575#1578#1610' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        OnClick = MnuPay_N6Click
      end
      object MnuPay_165: TMenuItem
        Caption = #1579#1576#1578' '#1578#1593#1607#1583#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1607' '#1588#1585#1603#1578' '
        OnClick = MnuPay_165Click
      end
    end
    object MnuPay_166: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578
      object MnuPay_RptCrossTab: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610
        OnClick = MnuPay_RptCrossTabClick
      end
      object MnuPay_167: TMenuItem
        Caption = #1605#1603#1575#1578#1576#1575#1578' '#1583#1585' Word'
        OnClick = MnuPay_167Click
      end
      object MnuPay_168: TMenuItem
        Caption = #1604#1610#1587#1578' '#1593#1608#1575#1605#1604' '#1578#1593#1610#1610#1606' '#1603#1606#1606#1583#1607' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575
        OnClick = MnuPay_168Click
      end
      object MnuPay_N18: TMenuItem
        Caption = #1604#1610#1587#1578' '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602#1610' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1662#1585#1587#1606#1604#1610
        object MnuPay_DetailInterdictListF13: TMenuItem
          Caption = #1576#1585' '#1575#1587#1575#1587' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
          OnClick = MnuPay_DetailInterdictListF13Click
        end
        object MnuPay_DetailInterdictListF8: TMenuItem
          Caption = #1576#1585' '#1575#1587#1575#1587' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
          OnClick = MnuPay_DetailInterdictListF8Click
        end
        object MnuPay_DetailInterdictListF12: TMenuItem
          Caption = #1576#1585' '#1575#1587#1575#1587' '#1608#1575#1581#1583' '#1607#1575#1610' '#1587#1575#1586#1605#1575#1606#1610
          OnClick = MnuPay_DetailInterdictListF12Click
        end
        object MnuPay_DetailInterdictListF27: TMenuItem
          Caption = #1576#1585' '#1575#1587#1575#1587' '#1711#1585#1608#1607' '#1607#1575#1610' '#1588#1594#1604#1610
          OnClick = MnuPay_DetailInterdictListF27Click
        end
      end
      object MnuPay_N64: TMenuItem
        Caption = '-'
      end
      object MnuPay_FunctionSpecialControlF: TMenuItem
        Tag = 1
        Caption = #1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610' '#1603#1606#1578#1585#1604' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
        OnClick = MnuPay_FunctionSpecialControlFClick
      end
      object MnuPay_N121: TMenuItem
        Tag = 2
        Caption = #1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610' '#1603#1606#1578#1585#1604' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589'2'
        OnClick = MnuPay_FunctionSpecialControlFClick
      end
    end
    object SalaryOtherReportSalary: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuPay_169: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuPay_N232: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = MnuPay_N232Click
      end
      object MnuPay_N237: TMenuItem
        Caption = '-'
      end
      object MnuPay_170: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuPay_User: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        OnClick = MnuPay_UserClick
      end
      object MnuPay_actCnPrefixWizard43: TMenuItem
        Action = mdiMainF.actChangepassword
      end
      object MnuPay_oolbar1: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        OnClick = AddToolbarClick
      end
      object MnuPay_actCnPrefixWizard44: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object N479: TMenuItem
        Caption = '-'
      end
      object MnuPay_171: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear23: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuPay_N82: TMenuItem
        Caption = '-'
      end
      object MnuPay_N103: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        object MnuPay_172: TMenuItem
          Caption = #1601#1604#1575#1662#1610' '#1608' '#1607#1575#1585#1583' '#1583#1610#1587#1603
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MnuPay_173: TMenuItem
          Caption = 'CD'
          Hint = '1'
          OnClick = CDBurnF0Click
        end
      end
      object MnuPay_174: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        OnClick = optionsF0Click
      end
      object MnuPay_175: TMenuItem
        Caption = '-'
      end
      object MnuPay_176: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        object MnuPay_177: TMenuItem
          Caption = #1603#1575#1588#1610
          OnClick = MnuPay_177Click
        end
        object MnuPay_178: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          OnClick = MnuPay_178Click
        end
      end
      object MnuPay_actCnPrefixWizard45: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF21: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList21: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MnuPay_179: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        OnClick = aboutF0Click
      end
      object MnuPay_N2: TMenuItem
        Caption = '-'
      end
      object MnuPay_180: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object MainMenu3PayRoll: TMainMenu
    Tag = 3
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 475
    Top = 387
    object MnuPay_vjMenu3: TMenuItem
      Tag = -1
      Caption = '&'#1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MnuPay_11: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        Hint = '1'
        OnClick = MnuPay_1Click
      end
      object MnuPay_12: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
        OnClick = FormInfo_1F0Click
      end
      object MnuPay_MItemOtherFormTypePVijeh: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1579#1575#1576#1578#1607#1575' '
        Hint = '1'
      end
      object MnuPay_13: TMenuItem
        Caption = '-'
      end
      object MnuPay_N196: TMenuItem
        Tag = 40
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuPay_N142Click
      end
      object MnuPay_N197: TMenuItem
        Tag = 41
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1711#1586#1575#1585#1588' '#1578#1581#1604#1610#1604#1610
        OnClick = MnuPay_N142Click
      end
      object MnuPay_N198: TMenuItem
        Caption = '-'
      end
      object MnuPay_14: TMenuItem
        Caption = '&'#1601#1585#1605' '#1608#1610#1688#1607
        Hint = '1'
      end
      object MnuPay_ArchiveInfoF2: TMenuItem
        Caption = #1605#1581#1575#1587#1576#1607' '#1582#1575#1589' '#1581#1602#1608#1602
        Hint = '1'
        OnClick = MnuPay_ArchiveInfoF2Click
      end
      object MnuPay_ArchiveInfo2F: TMenuItem
        Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602'2'
        OnClick = MnuPay_ArchiveInfo2FClick
      end
      object MnuPay_N231: TMenuItem
        Caption = #1578#1606#1592#1740#1605#8207#1578#1587#1578#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = MnuPay_WorkflowMainFClick
      end
      object MnuPay_actCnPrefixWizard: TMenuItem
        Action = mdiMainF.actUpdateEXE
      end
    end
    object MnuPay_15: TMenuItem
      Caption = '&'#1605#1583#1610#1585' '#1587#1610#1587#1578#1605
      Hint = '1'
      object MnuPay_17: TMenuItem
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '#1581#1602#1608#1602
        Hint = '1'
        ImageIndex = 8
        OnClick = MnuPay_ConfigFenterClick
      end
      object MnuPay_N76: TMenuItem
        Caption = '-'
      end
      object MnuPay_GetReprotsF0: TMenuItem
        Caption = #1587#1575#1582#1578' '#1711#1586#1575#1585#1588#1575#1578' '#1581#1602#1608#1602
        Hint = '1'
        OnClick = MnuPay_GetReprotsF0Click
      end
      object MnuPay_N32: TMenuItem
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1601#1740#1588' '#1581#1602#1608#1602' '#1582#1575#1589
        OnClick = MnuPay_N32Click
      end
      object MnuPay_N111: TMenuItem
        Caption = '-'
      end
      object MnuPay_MnuRecallBranchF: TMenuItem
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610' '#1607#1575
        OnClick = MnuPay_MnuRecallBranchFClick
      end
      object MnuPay_ShowWorkflowDefinitionsDlg: TMenuItem
        Caption = #1578#1593#1575#1585#1740#1601#8207#1711#1585#1583#1588#8207#1705#1575#1585
        OnClick = MnuPay_ShowWorkflowDefinitionsDlgClick
      end
    end
    object MnuPay_19: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '
      object MnuPay_110: TMenuItem
        Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1603#1604#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '
      end
      object MnuPay_N65: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemSalaryCalcP: TMenuItem
        Caption = #1593#1606#1575#1608#1610#1606' '#1605#1581#1575#1587#1576#1575#1578#1610' '#1581#1602#1608#1602' '#1548' '#1576#1610#1605#1607' '#1608' '#1605#1575#1604#1610#1575#1578' '
      end
      object MnuPay_MItemInterdictEffectP: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      end
      object MnuPay_MItemSalaryEffectP: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1579#1585' '#1576#1585#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
      end
      object MnuPay_111: TMenuItem
        Caption = '-'
      end
      object MnuPay_MItemOtherFormTypeP: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1579#1575#1576#1578' '
      end
      object MnuPay_MItemSalaryCorrelateP: TMenuItem
        Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1608' '#1575#1585#1578#1576#1575#1591' '#1570#1606#1607#1575
      end
      object MnuPay_N71: TMenuItem
        Caption = '-'
      end
      object MnuPay_112: TMenuItem
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1576#1740#1605#1607'-'#1605#1593#1585#1601#1610' '#1705#1575#1585#1711#1575#1607#1607#1575
        OnClick = MnuPay_157Click
      end
      object MnuInsurance: TMenuItem
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1576#1740#1605#1607'-'#1606#1585#1582' '#1607#1575#1740' '#1587#1575#1604#1740#1575#1606#1607
        OnClick = MnuInsuranceClick
      end
      object N163: TMenuItem
        Caption = '-'
      end
      object MnuTaxTabel: TMenuItem
        Caption = #1580#1583#1608#1604' '#1605#1575#1604#1740#1575#1578#1740
        OnClick = MnuTaxTabelClick
      end
    end
    object MnuPay_113: TMenuItem
      Caption = '&'#1662#1585#1587#1606#1604' '#1608' '#1575#1581#1603#1575#1605' '
      object MnuPay_3PersonelInfo: TMenuItem
        Action = mdiMainF.ActPersonelInfoF
      end
      object MnuPay_actCnPrefixWizard2: TMenuItem
        Action = mdiMainF.actEmployeeInfolistF
      end
      object MnuPay_N5: TMenuItem
        Caption = '-'
      end
      object MnuPay_PersonelAccountsF0: TMenuItem
        Caption = #1587#1575#1610#1585' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_PersonelAccountsF0Click
      end
      object MnuPay_N13: TMenuItem
        Caption = '-'
      end
      object MnuPay_3InterdictsF: TMenuItem
        Action = mdiMainF.ActInterdictsF
      end
      object MnuPay_N39: TMenuItem
        Caption = ' '#1581#1603#1605' '#1607#1575#1610' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1594#1610#1585#1601#1593#1575#1604
        OnClick = InterdictsFs50Click
      end
      object MnuPay_114: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard4: TMenuItem
        Action = mdiMainF.actInterdicts4FormF1
      end
      object MnuPay_N25: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1586#1575#1610#1575
        OnClick = Interdicts4ItemsF1Click
      end
      object MnuPay_Interdicts4HistoryF: TMenuItem
        Caption = #1587#1608#1575#1576#1602' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
        OnClick = Interdicts4HistoryF0tClick
      end
    end
    object MnuPay_N17: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1605#1575#1607#1610#1575#1606#1607
      object MnuPay_actCnPrefixWizard5: TMenuItem
        Action = mdiMainF.actPersonelDecExtInfo_2F54
      end
      object MnuPay_actCnPrefixWizard6: TMenuItem
        Action = mdiMainF.actPersonelFormInfo_1F23
      end
      object MnuPay_N58: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard7: TMenuItem
        Tag = 53
        Action = mdiMainF.actPersonelDecExtInfo_2F53
      end
      object MnuPay_actCnPrefixWizard8: TMenuItem
        Tag = 43
        Action = mdiMainF.actPersonelFormInfo_1F43
      end
      object MnuPay_PersonelFormInfo_1F: TMenuItem
        Caption = #1579#1576#1578' '#1587#1575#1740#1585' '#1575#1591#1604#1575#1593#1575#1578'...'
        OnClick = MnuPay_PersonelFormInfo_1FClick
      end
      object MnuPay_N50: TMenuItem
        Caption = '-'
      end
      object MnuPay_EmployeeLoanItem: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1575#1605#1607#1575' '#1576#1575' '#1580#1586#1574#1610#1575#1578
        OnClick = MnuPay_EmployeeLoanItemClick
      end
      object MnuPay_actCnPrefixWizard9: TMenuItem
        Action = mdiMainF.actMissionItemsF24
      end
      object MnuPay_actCnPrefixWizard10: TMenuItem
        Tag = 33
        Action = mdiMainF.actActEmployeeLoanF
      end
      object MnuPay_PaymentLoanWithRemainf: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1608#1575#1605' '#1607#1575
        OnClick = MnuPay_PaymentLoanWithRemainfClick
      end
      object MnuPay_Loan: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1575#1607#1575#1606#1607' '#1608#1575#1605' '#1607#1575
        OnClick = MnuPay_LoanClick
      end
      object MnuPay_N47: TMenuItem
        Caption = '-'
      end
      object MnuPay_MissionItemsF92: TMenuItem
        Caption = #1587#1575#1610#1585' '#1605#1586#1575#1610#1575#1610' '#1605#1575#1607#1575#1606#1607
        OnClick = MnuPay_MissionItemsF92Click
      end
      object MnuPay_N43: TMenuItem
        Caption = #1579#1576#1578' '#1605#1593#1575#1601#1610#1578#1607#1575#1610' '#1582#1575#1589' '#1605#1575#1604#1610#1575#1578#1610' '
        OnClick = MnuPay_N43Click
      end
      object MnuPay_dddd1: TMenuItem
        Caption = #1579#1576#1578' '#1605#1593#1575#1601#1740#1578' '#1607#1575#1740' '#1582#1575#1589' '#1576#1740#1605#1607
        OnClick = MnuPay_dddd1Click
      end
      object MnuPay_N41: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard11: TMenuItem
        Action = mdiMainF.actArchiveInfoF23
      end
    end
    object MnuPay_N12: TMenuItem
      Caption = #1587#1575#1610#1585' '#1593#1605#1604#1610#1575#1578' '
      ImageIndex = 6
      object MnuPay_PersonelDecExtInfo_2F35: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1593#1607#1583#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1607' '#1588#1585#1603#1578' '
        OnClick = MnuPay_PersonelDecExtInfo_2F35Click
      end
      object MnuPay_PersonelFormInfo_1F31: TMenuItem
        Caption = #1579#1576#1578' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1583#1608#1585#1607' '#1608' '#1578#1593#1583#1610#1604#1575#1578' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
        OnClick = MnuPay_PersonelFormInfo_1F31Click
      end
      object MnuPay_N35: TMenuItem
        Caption = '-'
      end
      object MnuPay_N37: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1610#1605#1607' '#1578#1603#1605#1610#1604#1610' '#1608' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610' '
        OnClick = MnuPay_N37Click
      end
      object MnuPay_N38: TMenuItem
        Caption = #1604#1610#1587#1578' '#1576#1610#1605#1607' '#1578#1603#1605#1610#1604#1610' '#1608' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610
        OnClick = MnuPay_N38Click
      end
      object MnuPay_InsouranceOther2F: TMenuItem
        Caption = #1604#1610#1587#1578' '#1576#1610#1605#1607' '#1578#1603#1605#1610#1604#1610' '#1608' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610' 2'
        OnClick = MnuPay_InsouranceOther2FClick
      end
      object MnuPay_N20: TMenuItem
        Caption = #1605#1581#1575#1587#1576#1607' '#1608' '#1579#1576#1578' '#1603#1604#1610' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
        object MnuPay_N30: TMenuItem
          Caption = #1603#1587#1608#1585#1575#1578' '#1605#1575#1607#1610#1575#1606#1607
          OnClick = MnuPay_N30Click
        end
        object MnuPay_N24: TMenuItem
          Caption = #1603#1587#1608#1585#1575#1578' '#1579#1575#1576#1578
          OnClick = MnuPay_N24Click
        end
        object MnuPay_N23: TMenuItem
          Caption = #1605#1586#1575#1610#1575#1610' '#1605#1575#1607#1610#1575#1606#1607
          OnClick = MnuPay_N23Click
        end
        object MnuPay_N21: TMenuItem
          Caption = #1605#1586#1575#1610#1575#1610' '#1579#1575#1576#1578
          OnClick = MnuPay_N21Click
        end
        object MnuPay_MnuN120: TMenuItem
          Caption = ' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575#1610' '#1605#1575#1607#1610#1575#1606#1607
          OnClick = MnuPay_MnuN120Click
        end
        object MnuPay_N73: TMenuItem
          Caption = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
          OnClick = MnuPay_N73Click
        end
        object MnuPay_DecExtCalculateF: TMenuItem
          Tag = 95
          Caption = #1605#1586#1575#1610#1575#1610' '#1587#1575#1604#1610#1575#1606#1607
          OnClick = MnuPay_DecExtCalculateFClick
        end
        object MnuPay_DecExtCalculateFClick1: TMenuItem
          Tag = 111
          Caption = #1662#1575#1583#1575#1588' '#1605#1587#1578#1602#1604' '#1575#1586' '#1581#1602#1608#1602
          OnClick = MnuPay_DecExtCalculateFClick1Click
        end
      end
      object MnuPay_MnuN119: TMenuItem
        Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575#1610' '#1605#1575#1607#1610#1575#1606#1607
        OnClick = MnuPay_MnuN119Click
      end
      object MnuPay_PersonelDecExt111F1: TMenuItem
        Tag = 111
        Caption = #1662#1575#1583#1575#1588' '#1605#1587#1578#1602#1604' '#1575#1586' '#1581#1602#1608#1602
        OnClick = MnuPay_PersonelDecExt111F1Click
      end
      object MnuPay_N242: TMenuItem
        Caption = #1579#1576#1578' '#1605#1575#1606#1583#1607' '#1589#1606#1583#1608#1602
        OnClick = MnuPay_N242Click
      end
    end
    object N37: TMenuItem
      Caption = #1604#1740#1587#1578' '#1581#1602#1608#1602
      object MnuPay_actCnPrefixWizard12: TMenuItem
        Action = mdiMainF.actSalaryList_insuranceF
      end
      object MnuPay_actCnPrefixWizard13: TMenuItem
        Action = mdiMainF.actSalaryList4OfficeF
      end
      object MnuPay_N213: TMenuItem
        Caption = '3-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
        OnClick = MnuPay_N213Click
      end
      object MnuPay_actCnPrefixWizard14: TMenuItem
        Action = mdiMainF.actSalaryListGroupF0
      end
      object MnuPay_N212: TMenuItem
        Caption = '5-'#1604#1610#1587#1578' '#1603#1604#1610' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
        OnClick = MnuPay_N212Click
      end
      object MnuPay_SalaryList_insurance2: TMenuItem
        Caption = '6-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575#1610' '#1662#1585#1587#1606#1604' 25 '#1587#1578#1608#1606#1610
        OnClick = MnuPay_SalaryList_insurance2Click
      end
      object MnuPay_SalaryList4Office25F: TMenuItem
        Caption = '7-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1575' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610'  25 '#1587#1578#1608#1606#1610
        OnClick = MnuPay_SalaryList4Office25FClick
      end
      object MnuPay_SalaryList4Office25_2F: TMenuItem
        Caption = '8-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1603#1575#1585#1603#1585#1583
        OnClick = MnuPay_SalaryList4Office25_2FClick
      end
      object MnuPay_SalaryList4SumOfficeUnLimitF0: TMenuItem
        Caption = '9-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1587#1585#1580#1605#1593' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1603#1575#1585#1603#1585#1583
        OnClick = MnuPay_SalaryList4SumOfficeUnLimitF0Click
      end
      object MnuPay_N310: TMenuItem
        Caption = '10-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' ('#1603#1575#1585#1603#1585#1583')'
        OnClick = MnuPay_N310Click
      end
      object MnuPay_N240: TMenuItem
        Caption = '11-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' ('#1605#1575#1607')'#8207
        OnClick = MnuPay_N240Click
      end
      object MnuPay_N1210: TMenuItem
        Caption = '12-'#1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1603#1575#1585#1603#1585#1583' N '#1587#1578#1608#1606#1740
        OnClick = MnuPay_N1210Click
      end
      object MnuPay_N79: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard15: TMenuItem
        Action = mdiMainF.actListSalary
      end
      object MnuPay_ListSalaryKaroonF: TMenuItem
        Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1582#1575#1589
        OnClick = MnuPay_ListSalaryKaroonFClick
      end
      object MnuPay_N88: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard16: TMenuItem
        Action = mdiMainF.actrptPayableSalaryF23
      end
      object MnuPay_SalaryList3colF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610' '#1576#1575' '#1580#1605#1593' '#1605#1586#1575#1610#1575#1608#1603#1587#1608#1585#1575#1578
        OnClick = MnuPay_SalaryList3colFClick
      end
    end
    object N7: TMenuItem
      Caption = ' '#1576#1740#1605#1607' '#1608' '#1605#1575#1604#1740#1575#1578' '
      object MnuPay_actCnPrefixWizard17: TMenuItem
        Action = mdiMainF.actMakeBankDSKF
      end
      object MnuPay_actCnPrefixWizard18: TMenuItem
        Tag = 1
        Action = mdiMainF.actListBimehNewF
      end
      object mnuListBimehRetired: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1740#1605#1607' '#1589#1606#1583#1608#1602' '#1576#1575#1586#1606#1588#1587#1578#1711#1740
        OnClick = mnuListBimehRetiredClick
      end
      object N86: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard19: TMenuItem
        Action = mdiMainF.actMakeDskTax95F
      end
      object MnuPay_actCnPrefixWizard20: TMenuItem
        Action = mdiMainF.actMakeDskTax95_86F
      end
      object MnuPay_SalaryListTaxF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1581#1602#1608#1602
        OnClick = MnuPay_SalaryListTaxFClick
      end
      object MnuPay_ListPensionerF60: TMenuItem
        Caption = #1604#1610#1587#1600#1600#1600#1578' '#1587#1575#1586#1605#1575#1606' '#1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1588#1608#1585#1610
        OnClick = MnuPay_ListPensionerF60Click
      end
      object MnuPay_N224: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1580#1605#1608#1593' '#1583#1585#1570#1605#1583' '#1581#1602#1608#1602' '#1603#1575#1585#1603#1606#1575#1606
        OnClick = MnuPay_N224Click
      end
      object MnuPay_N229: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1580#1605#1608#1593' '#1583#1585#1570#1605#1583' '#1581#1602#1608#1602' '#1603#1575#1585#1603#1606#1575#1606'-'#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
        OnClick = MnuPay_N229Click
      end
      object MnuPay_PersonelListPensionerF1: TMenuItem
        Caption = #1589#1606#1583#1608#1602' '#1576#1575#1586#1606#1588#1587#1578#1711#1610' '#1603#1588#1608#1585#1610
        OnClick = MnuPay_PersonelListPensionerF1Click
      end
    end
    object MnuPay_N67: TMenuItem
      Caption = #1711#1586#1575#1585#1588#1575#1578' '#1581#1602#1608#1602
      object MnuPay_MnuSalaryList4GetReprots: TMenuItem
        Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578' '#1581#1602#1608#1602' ...'
      end
      object MnuPay_TSalaryList_insurancePartF1: TMenuItem
        Tag = 1
        Caption = #1705#1583#1607#1575#1740' '#1605#1586#1575#1740#1575' '#1583#1585' '#1662#1585#1583#1575#1582#1578'  '#1602#1587#1591'1 '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
        OnClick = MnuPay_TSalaryList_insurancePartF1Click
      end
      object MnuPay_TSalaryList_insurancePartF2: TMenuItem
        Tag = 2
        Caption = #1705#1583#1607#1575#1740' '#1605#1586#1575#1740#1575' '#1583#1585' '#1662#1585#1583#1575#1582#1578'  '#1602#1587#1591'2 '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
        OnClick = MnuPay_TSalaryList_insurancePartF1Click
      end
      object MnuPay_N1100: TMenuItem
        Tag = 3
        Caption = #1705#1583#1607#1575#1740' '#1605#1586#1575#1740#1575' '#1583#1585' '#1578#1601#1575#1608#1578' '#1662#1585#1583#1575#1582#1578'  '#1582#1575#1604#1589' '#1602#1587#1591'1  '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
        OnClick = MnuPay_TSalaryList_insurancePartF1Click
      end
      object MnuPay_N92: TMenuItem
        Caption = '-'
      end
      object MnuPay_SalaryList4Office2F: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1581#1602#1608#1602' '#1576#1585' '#1575#1587#1575#1587' '#1578#1601#1589#1610#1604#1610'2'
        OnClick = MnuPay_SalaryList4Office2FClick
      end
      object MnuPay_SalaryList4OfficeUnLimitF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575' '#1593#1606#1575#1608#1610#1606' '#1603#1575#1585#1603#1585#1583' '#1608' '#1576#1610#1605#1607
        OnClick = MnuPay_SalaryList4OfficeUnLimitFClick
      end
      object MnuPay_N85: TMenuItem
        Caption = '-'
      end
      object MnuPay_SalaryListProjectGroupF00: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1575#1586' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607
        OnClick = MnuPay_SalaryListProjectGroupF00Click
      end
      object MnuPay_N22: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1575#1586' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607' '#1587#1575#1604#1740#1575#1606#1607
        OnClick = MnuPay_N22Click
      end
      object MnuPay_SalaryList4ProjectF00: TMenuItem
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1608#1688#1607
        OnClick = MnuPay_SalaryList4ProjectF00Click
      end
      object MnuPay_SalaryList4Office25MissionF00: TMenuItem
        Caption = #1604#1610#1587#1578' '#1581#1602#1608#1602' '#1576#1575' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610'  '#1608' '#1587#1585#1580#1605#1593' '#1605#1575#1605#1608#1585#1610#1578#1607#1575
        OnClick = MnuPay_SalaryList4Office25MissionF00Click
      end
      object MnuPay_N96: TMenuItem
        Caption = '-'
      end
      object MnuPay_N84: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1581#1602#1608#1602' '#1608#1575#1581#1583#1607#1575#1610' '#1587#1575#1586#1605#1575#1606#1610
        OnClick = MnuPay_N84Click
      end
      object MnuPay_N114: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1581#1602#1608#1602' '#1576#1607' '#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_N114Click
      end
      object MnuPay_N83: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1581#1602#1608#1602' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_N83Click
      end
      object MnuPay_N248: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1581#1602#1608#1602' '#1662#1585#1608#1688#1607
        OnClick = MnuPay_N248Click
      end
      object MnuPay_N68: TMenuItem
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1581#1602#1608#1602' '
        OnClick = MnuPay_N68Click
      end
      object mnuRptSalaryAdjustment: TMenuItem
        Caption = ' '#1711#1586#1575#1585#1588' '#1578#1593#1583#1740#1604' '#1581#1602#1608#1602' '
        OnClick = mnuRptSalaryAdjustmentClick
      end
      object MnuPay_N249: TMenuItem
        Caption = '-'
      end
      object MnuPay_N228: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1587#1575#1604#1740#1575#1606#1607' '#1581#1602#1608#1602' '#1705#1604' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_N228Click
      end
      object MnuPay_N2200: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1587#1575#1604#1740#1575#1606#1607' '#1581#1602#1608#1602' '#1705#1604' '#1662#1585#1587#1606#1604'2'
        OnClick = MnuPay_N2200Click
      end
      object MnuPay_N250: TMenuItem
        Caption = '-'
      end
      object MnuPay_SalaryOverTime: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        OnClick = MnuPay_SalaryOverTimeClick
      end
      object MnuPay_N251: TMenuItem
        Caption = '-'
      end
      object MnuPay_actCnPrefixWizard21: TMenuItem
        Action = mdiMainF.actSpAnalysisSalary
      end
      object MnuPay_actCnPrefixWizard22: TMenuItem
        Action = mdiMainF.actSpAnalysisSalaryActualCostsF
      end
    end
    object MnuPay_N62: TMenuItem
      Caption = #1605#1593#1608#1602#1607' '#1581#1602#1608#1602
      object MnuPay_RetardListSalary: TMenuItem
        Caption = #1601#1610#1588'  '#1605#1593#1608#1602#1607' '#1581#1602#1608#1602
        ImageIndex = 9
        OnClick = MnuPay_RetardListSalaryClick
      end
      object MnuPay_RetardSalaryList: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1593#1608#1602' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1605#1581#1604' '#1582#1583#1605#1578
        OnClick = MnuPay_RetardSalaryListClick
      end
      object MnuPay_RetardSalaryListF2: TMenuItem
        Caption = #1604#1610#1587#1578' '#1605#1593#1608#1602' '#1581#1602#1608#1602' '#1576#1578#1601#1603#1610#1603' '#1605#1581#1604' '#1582#1583#1605#1578'('#1605#1581#1583#1608#1583' '#1576#1607' '#1578#1575#1585#1610#1582')'#8207
        OnClick = MnuPay_RetardSalaryListF2Click
      end
      object MnuPay_N60: TMenuItem
        Caption = '-'
      end
      object MnuPay_ListBimehNewF2: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608' '#1583#1610#1587#1603#1578' '#1605#1593#1608#1602' '#1576#1610#1605#1600#1607
        ImageIndex = 21
        OnClick = MnuPay_ListBimehNewF2Click
      end
      object MnuPay_RetardMakeBankDSK: TMenuItem
        Caption = #1604#1610#1587#1578' '#1608' '#1583#1610#1587#1603#1578' '#1576#1575#1606#1603#1607#1575' '#1575#1586' '#1605#1593#1608#1602' '#1581#1602#1608#1602
        OnClick = MnuPay_RetardMakeBankDSKClick
      end
    end
    object MnuPay_oo1: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578' '#1662#1575#1610#1575#1606' '#1587#1575#1604
      object MnuPay_PersonelDecExtInfo_2F32: TMenuItem
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1587#1575#1604#1610#1575#1606#1607' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_PersonelDecExtInfo_2F32Click
      end
      object MnuPay_N36: TMenuItem
        Caption = '-'
      end
      object MnuPay_N110: TMenuItem
        Caption = #1605#1586#1575#1610#1575#1610' '#1587#1575#1604#1610#1575#1606#1607
        OnClick = MnuPay_N110Click
      end
      object MnuPay_N72: TMenuItem
        Caption = #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1593#1610#1583#1610
        OnClick = MnuPay_N72Click
      end
      object MnuPay_PersonalTideF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588'  '#1603#1575#1585#1603#1606#1575#1606
        OnClick = MnuPay_PersonalTideFClick
      end
      object MnuPay_SalaryEndServiceF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1603#1575#1585#1603#1606#1575#1606
        OnClick = MnuPay_SalaryEndServiceFClick
      end
      object MnuPay_N146: TMenuItem
        Tag = 2
        Caption = #1604#1610#1587#1578' '#1605#1585#1582#1589#1610' '#1603#1575#1585#1603#1606#1575#1606
        OnClick = MnuPay_N146Click
      end
      object MnuPay_Interdicts4ItemsTideF: TMenuItem
        Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1586#1575#1610#1575' '#1608' '#1593#1740#1583#1740' '#1608' '#1587#1606#1608#1575#1578
        OnClick = MnuPay_Interdicts4ItemsTideFClick
      end
      object MnuPay_N63: TMenuItem
        Caption = '-'
      end
      object MnuPay_PonyF0: TMenuItem
        Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1662#1585#1587#1606#1604
        OnClick = MnuPay_PonyF0Click
      end
      object MnuPay_N239: TMenuItem
        Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1662#1585#1587#1606#1604'2'
        OnClick = MnuPay_N239Click
      end
      object MnuPay_N51: TMenuItem
        Caption = #1604#1740#1587#1578' '#1578#1587#1608#1740#1607' '#1581#1587#1575#1576
        OnClick = MnuPay_N51Click
      end
      object MnuPay_N100: TMenuItem
        Caption = '-'
      end
      object MnuPay_CalcAnnuityF: TMenuItem
        Caption = #1605#1581#1575#1587#1576#1607' '#1593#1610#1583#1610' '#1608' '#1587#1606#1608#1575#1578' '#1582#1583#1605#1578
        OnClick = MnuPay_CalcAnnuityFClick
      end
    end
    object SalaryOtherReportPay: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MnuPay_115: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MnuPay_MainTaskListF: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = MnuPay_MainTaskListFClick
      end
      object MnuPay_N238: TMenuItem
        Caption = '-'
      end
      object MnuPay_116: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MnuPay_N105: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
      end
      object MnuPay_actCnPrefixWizard23: TMenuItem
        Action = mdiMainF.actChangepassword
      end
      object MnuPay_oolbar2: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        OnClick = AddToolbarClick
      end
      object MnuPay_actCnPrefixWizard24: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object N481: TMenuItem
        Caption = '-'
      end
      object MnuPay_117: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear24: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MnuPay_118: TMenuItem
        Caption = '-'
      end
      object MnuPay_N104: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        Hint = '1'
        object MnuPay_119: TMenuItem
          Caption = #1601#1604#1575#1662#1610' '#1608' '#1607#1575#1585#1583' '#1583#1610#1587#1603
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MnuPay_120: TMenuItem
          Caption = 'CD'
          Hint = '1'
        end
      end
      object MnuPay_121: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        OnClick = optionsF0Click
      end
      object MnuPay_N81: TMenuItem
        Caption = '-'
      end
      object MnuPay_Windows1: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        object MnuPay_122: TMenuItem
          Caption = #1603#1575#1588#1610
          OnClick = MnuPay_122Click
        end
        object MnuPay_123: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          OnClick = MnuPay_123Click
        end
      end
      object MnuPay_actCnPrefixWizard25: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF22: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList22: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MnuPay_124: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        OnClick = aboutF0Click
      end
      object MnuPay_N3: TMenuItem
        Caption = '-'
      end
      object MnuPay_125: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Mnu26Government: TMainMenu
    Tag = 1
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 235
    Top = 469
    object MenuItem6: TMenuItem
      Tag = -1
      Caption = #1608#1610#1688#1607
      Hint = '1'
      Visible = False
      object MenuItem19: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
        Hint = '1'
        OnClick = ReciptTypesF0Click
      end
      object MenuItem21: TMenuItem
        Caption = '-'
        Hint = '1'
      end
    end
    object MenuItem22: TMenuItem
      Caption = '&'#1605#1583#1610#1585#1587#1610#1587#1578#1605
      Hint = '1'
      object MenuItem852: TMenuItem
        Caption = '&'#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605' '
        Hint = '1'
        OnClick = ConfigClick
      end
    end
    object MenuItem853: TMenuItem
      Caption = '&'#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
    end
    object MenuItem974: TMenuItem
      Caption = #1575#1605#1608#1585' '#1605#1575#1604#1740#1575#1578#1740
      object N475: TMenuItem
        Action = mdiMainF.actrptElectronicsBooksF
      end
      object N476: TMenuItem
        Caption = '-'
      end
      object MenuItem975: TMenuItem
        Action = mdiMainF.actrptDarayiSellsF
      end
      object MenuItem976: TMenuItem
        Action = mdiMainF.actrptDarayiBuysF
      end
      object MenuItem977: TMenuItem
        Action = mdiMainF.actrptDarayiSellsMonthF
      end
      object MenuItem978: TMenuItem
        Action = mdiMainF.actrptDarayiBuysFItem
      end
      object MenuItem979: TMenuItem
        Action = mdiMainF.actrptDarayiHaghol
      end
      object MenuItem980: TMenuItem
        Action = mdiMainF.actrptDarayiHaghol2
      end
      object MenuItem981: TMenuItem
        Action = mdiMainF.actrptDarayiHaghol3
      end
    end
    object N104: TMenuItem
      Caption = #1575#1605#1608#1585' '#1576#1740#1605#1607
      object N465: TMenuItem
        Action = mdiMainF.actMakeBankDSKF
      end
      object N466: TMenuItem
        Tag = 1
        Action = mdiMainF.actListBimehNewF
      end
      object N467: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1740#1605#1607' '#1589#1606#1583#1608#1602' '#1576#1575#1586#1606#1588#1587#1578#1711#1740
        OnClick = mnuListBimehRetiredClick
      end
    end
    object Mnu26RptGovernment: TMenuItem
      Caption = #1587#1575#1610#1585' '#1711#1586#1575#1585#1588#1575#1578
    end
    object MenuItem1018: TMenuItem
      Caption = '&'#1587#1610#1587#1578#1600#1600#1600#1600#1605
      Hint = '1'
      object MenuItem1019: TMenuItem
        Caption = #1705#1575#1585#1578#1575#1576#1604
        OnClick = mnuMainTaskListFClick
      end
      object MenuItem1020: TMenuItem
        Caption = '-'
      end
      object MenuItem1021: TMenuItem
        Caption = '&'#1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
        Hint = '1'
        OnClick = OperatorsClick
      end
      object MenuItem1022: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1603#1575#1585#1576#1585' '#1601#1593#1575#1604
        Hint = '1'
        OnClick = changeUserClick
      end
      object MenuItem1023: TMenuItem
        Action = mdiMainF.actChangePass
      end
      object MenuItem1024: TMenuItem
        Caption = #1605#1610#1575#1606#1576#1585#1607#1575#1610' '#1605#1606#1608#1610' '#1575#1589#1604#1610
        Hint = '1'
        OnClick = AddToolbarClick
      end
      object MenuItem1025: TMenuItem
        Action = mdiMainF.actOperatorNotificationF
      end
      object MenuItem1026: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
        Hint = '1'
        ShortCut = 122
        OnClick = SelectYearF0Click
      end
      object mnuShowMaliYear25: TMenuItem
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1605#1575#1604#1610
        ShortCut = 123
        OnClick = mnuShowMaliYearClick
      end
      object MenuItem1027: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem1028: TMenuItem
        Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
        object MenuItem1029: TMenuItem
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606
          Hint = '1'
          OnClick = MakeBackUpF0Click
        end
        object MenuItem1030: TMenuItem
          Tag = 8
          Caption = #1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606'  '#1585#1608#1610' CD'#8207' '
          Hint = '1'
          OnClick = BackUpBurnCDBsellClick
        end
      end
      object MenuItem1031: TMenuItem
        Caption = #1662#1610#1603#1585' '#1576#1606#1583#1610' '#1587#1610#1587#1578#1605
        Hint = '1'
        OnClick = optionsF0Click
      end
      object MenuItem1032: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem1033: TMenuItem
        Caption = #1662#1606#1580#1585#1607#8207#1607#1575
        Hint = '1'
        object MenuItem1034: TMenuItem
          Caption = #1603#1575#1588#1610
          Hint = '1'
          OnClick = Tile0Click
        end
        object MenuItem1035: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          Hint = '1'
          OnClick = Cascade0Click
        end
        object MenuItem1036: TMenuItem
          Caption = '&Arrange'
          Enabled = False
        end
        object MenuItem1037: TMenuItem
          Caption = '&Cascade'
          Enabled = False
          Hint = 'Cascade'
          ImageIndex = 17
        end
        object MenuItem1038: TMenuItem
          Caption = 'C&lose'
          Enabled = False
          Hint = 'Close'
        end
        object MenuItem1039: TMenuItem
          Caption = '&Minimize All'
          Enabled = False
          Hint = 'Minimize All'
          OnClick = WindowMinimizeAll1Execute
        end
        object MenuItem1040: TMenuItem
          Caption = 'Tile &Horizontally'
          Enabled = False
          Hint = 'Tile Horizontal'
          ImageIndex = 15
        end
        object MenuItem1041: TMenuItem
          Caption = '&Tile Vertically'
          Enabled = False
          Hint = 'Tile Vertical'
          ImageIndex = 16
        end
        object MenuItem1042: TMenuItem
          Caption = 'Themes'
        end
      end
      object MenuItem1043: TMenuItem
        Action = mdiMainF.actHelp
      end
      object MnufeedbackF23: TMenuItem
        Caption = #1576#1575#1586#1582#1608#1585#1583
        Hint = ' '
        OnClick = MnufeedbackClick
      end
      object MnuFeedBackList23: TMenuItem
        Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
        OnClick = MnuFeedBackListClick
      end
      object MenuItem1044: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607'...'#8207
        Hint = '1'
        OnClick = aboutF0Click
      end
      object MenuItem1046: TMenuItem
        Caption = '-'
        Hint = '1'
      end
      object MenuItem1047: TMenuItem
        Caption = '&'#1582#1585#1608#1580
        Hint = '1'
        OnClick = Close0Click
      end
    end
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 956
    Top = 112
  end
  object tmrForceNotification: TTimer
    Enabled = False
    Interval = 40000
    OnTimer = tmrForceNotificationTimer
    Left = 940
    Top = 192
  end
end
